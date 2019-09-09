//
// OBStatementAmount1.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Set of elements used to provide details of a generic amount for the statement resource. */

public struct OBStatementAmount1: Codable {

    public enum CreditDebitIndicator: String, Codable { 
        case credit = "Credit"
        case debit = "Debit"
    }
    /** Indicates whether the amount is a credit or a debit.  Usage: A zero amount is considered to be a credit amount. */
    public var creditDebitIndicator: CreditDebitIndicator
    public var type: OBExternalStatementAmountType1Code
    public var amount: OBActiveOrHistoricCurrencyAndAmount

    public init(creditDebitIndicator: CreditDebitIndicator, type: OBExternalStatementAmountType1Code, amount: OBActiveOrHistoricCurrencyAndAmount) {
        self.creditDebitIndicator = creditDebitIndicator
        self.type = type
        self.amount = amount
    }

    public enum CodingKeys: String, CodingKey { 
        case creditDebitIndicator = "CreditDebitIndicator"
        case type = "Type"
        case amount = "Amount"
    }


}

