//
// OBReadDirectDebit1Data.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct OBReadDirectDebit1Data: Codable {

    /** Account to or from which a cash entry is made. */
    public var directDebit: [OBDirectDebit1]?

    public init(directDebit: [OBDirectDebit1]?) {
        self.directDebit = directDebit
    }

    public enum CodingKeys: String, CodingKey { 
        case directDebit = "DirectDebit"
    }


}

