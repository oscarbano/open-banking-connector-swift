//
// OBTransactionCashBalance.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Set of elements used to define the balance as a numerical representation of the net increases and decreases in an account after a transaction entry is applied to the account. */

public struct OBTransactionCashBalance: Codable {

    public var creditDebitIndicator: OBCreditDebitCode2
    public var type: OBBalanceType1Code
    public var amount: OBTransactionCashBalanceAmount

    public init(creditDebitIndicator: OBCreditDebitCode2, type: OBBalanceType1Code, amount: OBTransactionCashBalanceAmount) {
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

