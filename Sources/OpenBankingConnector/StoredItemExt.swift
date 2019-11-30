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
import BaseServices

/// List of conforming types to allow storage setup etc
let storedItemConformingTypes: [String: StoredItem.Type] = [
    OBClientProfile.typeName:                       OBClientProfile.self,
    SoftwareStatementProfile.typeName:              SoftwareStatementProfile.self,
    AccountTransactionConsent.typeName:             AccountTransactionConsent.self,
    PaymentInitiationDomesticConsent.typeName:      PaymentInitiationDomesticConsent.self,
    PaymentInitiationDomestic.typeName:             PaymentInitiationDomestic.self
]

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
            .column("state", type: .text)
            .column("json", type: .text, .notNull)
            .run()
            .flatMapError({error in
                print(error)
                fatalError()
            })
    }
    
    static func load(
        id: String?,
        state: String?,
        on eventLoop: EventLoop = MultiThreadedEventLoopGroup.currentEventLoop!
    ) -> EventLoopFuture<[Self]> {
        
        var builder = sm.db.currentValue!.select()
            .column(SQLRaw("json"))
            .from(self.tableName)
        if let id = id {
            builder = builder.where(SQLColumn(SQLRaw("id")), .equal, SQLBind(id))
        }
        if let state = state {
            builder = builder.where(SQLColumn(SQLRaw("state")), .equal, SQLBind(state))
        }
        let futureOnDBEventLoop = builder.all()
        return futureOnDBEventLoop
            .hop(to: eventLoop)
            .flatMapThrowing({ rowArray -> [Self] in
                var resultArray = [Self]()
                for row in rowArray {
                    let dataString: String = try row.decode(column: "json", as: String.self)
                    let result: Self = try sm.jsonDecoderDateFormatISO8601WithMilliSeconds.decode(
                        Self.self,
                        from: Data(dataString.utf8)
                    )
                    resultArray.append(result)
                }
                return resultArray
            })
            .flatMapError({error in
                print(error)
                fatalError()
            })
        
    }
    
    static func load(
        id: String,
        on eventLoop: EventLoop = MultiThreadedEventLoopGroup.currentEventLoop!
        ) -> EventLoopFuture<Self> {
        
        let futureOnDBEventLoop = sm.db.currentValue!.select()
            .column(SQLRaw("json"))
            .from(self.tableName)
            .where(SQLColumn(SQLRaw("id")), .equal, SQLBind(id))
            .all()
        return futureOnDBEventLoop
            .hop(to: eventLoop)
            .flatMapThrowing({ rowArray -> Self in
                let row: SQLRow = rowArray[0]
                let valueString: String = try row.decode(column: "json", as: String.self)
                let value: Self = try sm.jsonDecoderDateFormatISO8601WithMilliSeconds.decode(
                    Self.self,
                    from: Data(valueString.utf8)
                )
                return value
            })
            .flatMapError({error in
                print(error)
                fatalError()
            })
        
    }

    
    func insert() -> EventLoopFuture<Void> {
        print(tableNameTmp)
        return sm.db.currentValue!.insert(into: tableNameTmp)
            .columns("id", "softwareStatementProfileId", "issuerURL", "obClientId", "userId", "state", "json")
            .values(SQLBind(id), SQLBind(softwareStatementProfileId), SQLBind(issuerURL), SQLBind(obClientId), SQLBind(userId), SQLBind(state),
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
            .set("state", to: state)
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

