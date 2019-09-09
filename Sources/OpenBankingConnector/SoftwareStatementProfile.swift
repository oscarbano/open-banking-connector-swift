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

struct SoftwareStatementProfile: StoredItem {
    
    // ********************************************************************************
    // MARK: StoredItem Template Code
    // ********************************************************************************
    
    /// ID used to uniquely identify object (cannot be changed, create new object to change)
    /// - returns: A String object.
    var id: String {
        get {
            return self.softwareStatementId
        }
    }
    
    // Association of data object with other data objects ("ownership")
    // Empty strings used for types where association doesn't make sense
    /// "FinTech identity"
    var softwareStatementProfileId: String {
        get {
            return self.id
        }
    }
    /// "Bank (ASPSP) identity"
    let issuerURL: String = ""
    /// "Open Banking client identity"
    let obClientId: String = ""
    /// "User identity"
    let userId: String = ""
    
    /// State variable supplied to auth endpoint (used to process redirect); only relevant for consents that need authorisation
    var authState: String = ""
    
    // Timestamp for object creation as best we can determine
    var created: Date = Date()
      
    // Deletion status for object
    //@Mutable var isDeleted: Bool = false
    var isDeleted: Mutable<Bool> = Mutable<Bool>(wrappedValue: false)
    
    // ********************************************************************************

    let obSigningKey: String
    let obSigningPem: String
    let obSigningKID: String
    let obTransportKey: String
    let obTransportPem: String
    let softwareStatement: String
    let softwareStatementId: String
    let redirectURLs: [String]
    let scope: String
    let orgId: String
    
    static func load(
        id: String,
        on eventLoop: EventLoop = MultiThreadedEventLoopGroup.currentEventLoop!
        ) -> EventLoopFuture<SoftwareStatementProfile> {
        
        let futureOnDBEventLoop = sm.db.currentValue!.select()
            .column(SQLRaw("json"))
            .from(self.tableName)
            .where(SQLColumn(SQLRaw("id")), .equal, SQLBind(id))
            .all()
        return futureOnDBEventLoop
            .hop(to: eventLoop)
            .flatMapThrowing({ rowArray -> SoftwareStatementProfile in
                let row: SQLRow = rowArray[0]
                let softwareStatementString: String = try row.decode(column: "json", as: String.self)
                let softwareStatement: SoftwareStatementProfile = try sm.jsonDecoderDateFormatISO8601WithMilliSeconds.decode(
                    SoftwareStatementProfile.self,
                    from: Data(softwareStatementString.utf8)
                )
                return softwareStatement
            })
            .flatMapError({error in
                print(error)
                fatalError()
            })
        
    }
    
}
