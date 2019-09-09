//
// OBReadBalance1DataCreditLine.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Set of elements used to provide details on the credit line. */

public struct OBReadBalance1DataCreditLine: Codable {

    public enum ModelType: String, Codable { 
        case available = "Available"
        case credit = "Credit"
        case emergency = "Emergency"
        case preAgreed = "Pre-Agreed"
        case temporary = "Temporary"
    }
    /** Indicates whether or not the credit line is included in the balance of the account. Usage: If not present, credit line is not included in the balance amount of the account. */
    public var included: Bool
    /** Limit type, in a coded form. */
    public var type: ModelType?
    public var amount: OBReadBalance1DataAmount1?

    public init(included: Bool, type: ModelType?, amount: OBReadBalance1DataAmount1?) {
        self.included = included
        self.type = type
        self.amount = amount
    }

    public enum CodingKeys: String, CodingKey { 
        case included = "Included"
        case type = "Type"
        case amount = "Amount"
    }


}

