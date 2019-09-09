//
// OBStatement2StatementRate.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Set of elements used to provide details of a generic rate related to the statement resource. */

public struct OBStatement2StatementRate: Codable {

    public var rate: OBExternalStatementRateType1Code
    public var type: Type0

    public init(rate: OBExternalStatementRateType1Code, type: Type0) {
        self.rate = rate
        self.type = type
    }

    public enum CodingKeys: String, CodingKey { 
        case rate = "Rate"
        case type = "Type"
    }


}
