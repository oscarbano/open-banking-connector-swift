//
// OBActiveOrHistoricCurrencyAndAmount2.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The amount of the final Standing Order */

public struct OBActiveOrHistoricCurrencyAndAmount2: Codable {

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

