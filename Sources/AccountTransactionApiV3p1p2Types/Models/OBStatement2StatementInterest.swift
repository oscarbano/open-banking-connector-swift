//
// OBStatement2StatementInterest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Set of elements used to provide details of a generic interest amount related to the statement resource. */

public struct OBStatement2StatementInterest: Codable {

    public var _description: Description2?
    public var creditDebitIndicator: OBCreditDebitCode0
    public var type: OBExternalStatementInterestType1Code
    public var rate: OBRate11?
    public var rateType: OBExternalStatementInterestRateType1Code?
    public var frequency: OBExternalStatementInterestFrequency1Code?
    public var amount: OBActiveOrHistoricCurrencyAndAmount5

    public init(_description: Description2?, creditDebitIndicator: OBCreditDebitCode0, type: OBExternalStatementInterestType1Code, rate: OBRate11?, rateType: OBExternalStatementInterestRateType1Code?, frequency: OBExternalStatementInterestFrequency1Code?, amount: OBActiveOrHistoricCurrencyAndAmount5) {
        self._description = _description
        self.creditDebitIndicator = creditDebitIndicator
        self.type = type
        self.rate = rate
        self.rateType = rateType
        self.frequency = frequency
        self.amount = amount
    }

    public enum CodingKeys: String, CodingKey { 
        case _description = "Description"
        case creditDebitIndicator = "CreditDebitIndicator"
        case type = "Type"
        case rate = "Rate"
        case rateType = "RateType"
        case frequency = "Frequency"
        case amount = "Amount"
    }


}

