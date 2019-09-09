//
// OBStatement2StatementAmount.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Set of elements used to provide details of a generic amount for the statement resource. */

public struct OBStatement2StatementAmount: Codable {

    public var creditDebitIndicator: OBCreditDebitCode0
    public var type: OBExternalStatementAmountType1Code
    public var amount: OBActiveOrHistoricCurrencyAndAmount6

    public init(creditDebitIndicator: OBCreditDebitCode0, type: OBExternalStatementAmountType1Code, amount: OBActiveOrHistoricCurrencyAndAmount6) {
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

