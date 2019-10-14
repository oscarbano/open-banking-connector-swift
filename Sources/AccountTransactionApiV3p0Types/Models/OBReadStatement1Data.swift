//
// OBReadStatement1Data.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct OBReadStatement1Data: Codable {

    /** Provides further details on a statement resource. */
    public var statement: [OBStatement1]?

    public init(statement: [OBStatement1]?) {
        self.statement = statement
    }

    public enum CodingKeys: String, CodingKey { 
        case statement = "Statement"
    }


}
