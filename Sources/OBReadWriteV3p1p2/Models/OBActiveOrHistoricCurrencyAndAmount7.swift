//
// OBActiveOrHistoricCurrencyAndAmount7.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Amount of money in the cash transaction entry. */

public struct OBActiveOrHistoricCurrencyAndAmount7: Codable {

    public var amount: OBActiveCurrencyAndAmountSimpleType
    public var currency: ActiveOrHistoricCurrencyCode1

    public init(amount: OBActiveCurrencyAndAmountSimpleType, currency: ActiveOrHistoricCurrencyCode1) {
        self.amount = amount
        self.currency = currency
    }

    public enum CodingKeys: String, CodingKey { 
        case amount = "Amount"
        case currency = "Currency"
    }


}

