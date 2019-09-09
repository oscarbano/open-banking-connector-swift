// ********************************************************************************
//
// This source file is part of the Open Banking Connector project
// ( https://github.com/finlabsuk/open-banking-connector ).
//
// Copyright (C) 2019 Finnovation Labs and the Open Banking Connector project authors.
//
// Licensed under Apache License v2.0. See LICENSE.txt for licence information.
// SPDX-License-Identifier: Apache-2.0
//
// ********************************************************************************

import Foundation
import NIO
import SQLKit

//@propertyWrapper
struct Mutable<V: Codable>: Codable {

    var value: V
    var modified: Date
    
    init(wrappedValue: V) {
        value = wrappedValue
        modified = Date()
    }
    
    var wrappedValue: V {
        get { return value }
        set {
            value = newValue
            modified = Date()
        }
    }
    
}

/// List of conforming types to allow storage setup etc
let storedItemConformingTypes: [String: StoredItem.Type] = [
    OBClientProfile.typeName:                       OBClientProfile.self,
    SoftwareStatementProfile.typeName:              SoftwareStatementProfile.self,
    AccountAccessConsent.typeName:                  AccountAccessConsent.self
]

/// Data Item that can be persisted in database and synced between devices.
protocol StoredItem: Codable {
    
    // ********************************************************************************
    // MARK: Stored properties (persist to storage)
    // ********************************************************************************

    /// Unique identity of data object
    var id: String { get }
    
    // Association of data object with other data objects ("ownership")
    // Empty strings used for types where association doesn't make sense
    /// "FinTech identity"
    var softwareStatementProfileId: String { get }
    /// "Bank (ASPSP) identity"
    var issuerURL: String { get }
    /// "Open Banking client identity"
    var obClientId: String { get }
    /// "User identity"
    var userId: String { get }
    
    /// State variable supplied to auth endpoint (used to process redirect); only relevant for consents that need authorisation
    var authState: String { get }
    
    /// Data object creation date
    var created: Date { get }
    
    // Has data object been deleted?
    // (Done this way to support "undo" and merging of data objects from different DB - latest
    // value wins.)
    var isDeleted: Mutable<Bool> { get set }

    // ********************************************************************************
    // MARK: Stored properties (don't persist to storage)
    // ********************************************************************************

    // ********************************************************************************
    // MARK: Required methods
    // ********************************************************************************

    // ********************************************************************************
    // MARK: Optional methods
    // ********************************************************************************

}

extension StoredItem {
    
    // ********************************************************************************
    // MARK: Default implementations of optional methods
    // ********************************************************************************
        
    // ********************************************************************************
    // MARK: Methods not exposed for customisation
    // ********************************************************************************
    
    static var typeName: String {
        get {
            return String(describing: self)
        }
    }
    
    static var tableName: String {
        get {
            return String(describing: self) + "s"
        }
    }
    
    var tableNameTmp: String { // Can remove after Swift 5.1
        get {
            return String(describing: type(of: self)) + "s"
        }
    }
    
    static func dropTable() -> EventLoopFuture<Void> {
        return sm.db.currentValue!.drop(table: tableName)
            .ifExists()
            .run()
            .flatMapError({error in
                print(error)
                fatalError()
            })
    }
    
    static func createTable() -> EventLoopFuture<Void> {
        return sm.db.currentValue!.create(table: tableName)
            .ifNotExists()
            .column("id", type: .text, .primaryKey(autoIncrement: false)) // need to add .notNull
            .column("softwareStatementProfileId", type: .text, .notNull)
            .column("issuerURL", type: .text)
            .column("obClientId", type: .text)
            .column("userId", type: .text)
            .column("authState", type: .text)
            .column("json", type: .text, .notNull)
            .run()
            .flatMapError({error in
                print(error)
                fatalError()
            })
    }
    
    func insert() -> EventLoopFuture<Void> {
        print(tableNameTmp)
        return sm.db.currentValue!.insert(into: tableNameTmp)
            .columns("id", "softwareStatementProfileId", "issuerURL", "obClientId", "userId", "authState", "json")
            .values(SQLBind(id), SQLBind(softwareStatementProfileId), SQLBind(issuerURL), SQLBind(obClientId), SQLBind(userId), SQLBind(authState),
                    SQLBind(self.encodeString()))
            .run()
            .flatMapError({error in
                print(error)
                fatalError()
            })
    }
    
    func update() -> EventLoopFuture<Void> {
        sm.db.currentValue!.update(tableNameTmp)
            .set("id", to: id)
            .set("softwareStatementProfileId", to: softwareStatementProfileId)
            .set("issuerURL", to: issuerURL)
            .set("obClientId", to: obClientId)
            .set("userId", to: userId)
            .set("authState", to: authState)
            .set("json", to: self.encodeString())
            .where(SQLColumn(SQLRaw("id")), .equal, SQLBind(id))
            .run()
            .flatMapError({error in
                print(error)
                fatalError()
            })
    }
    
    /// Encode JSON (gets around bug that stops direct use in other places)
    func encode() -> Data {
        return try! sm.jsonEncoderDateFormatISO8601WithMilliSeconds.encode(self)
    }
    
    /// Encode JSON (gets around bug that stops direct use in other places)
    func encodeString() -> String {
        let data: Data = self.encode()
        return String(data: data, encoding: .utf8)!
    }

}

