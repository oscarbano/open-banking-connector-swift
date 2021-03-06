//
// OBCreditLine1.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Set of elements used to provide details on the credit line. */

public struct OBCreditLine1: Codable {

    /** Indicates whether or not the credit line is included in the balance of the account. Usage: If not present, credit line is not included in the balance amount of the account. */
    public var included: Bool
    public var type: OBExternalLimitType1Code?
    public var amount: OBActiveOrHistoricCurrencyAndAmount?

    public init(included: Bool, type: OBExternalLimitType1Code?, amount: OBActiveOrHistoricCurrencyAndAmount?) {
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

