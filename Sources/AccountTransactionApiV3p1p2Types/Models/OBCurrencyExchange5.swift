//
// OBCurrencyExchange5.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Set of elements used to provide details on the currency exchange. */

public struct OBCurrencyExchange5: Codable {

    /** Currency from which an amount is to be converted in a currency conversion. */
    public var sourceCurrency: String
    /** Currency into which an amount is to be converted in a currency conversion. */
    public var targetCurrency: String?
    /** Currency in which the rate of exchange is expressed in a currency exchange. In the example 1GBP &#x3D; xxxCUR, the unit currency is GBP. */
    public var unitCurrency: String?
    /** Factor used to convert an amount from one currency into another. This reflects the price at which one currency was bought with another currency. Usage: ExchangeRate expresses the ratio between UnitCurrency and QuotedCurrency (ExchangeRate &#x3D; UnitCurrency/QuotedCurrency). */
    public var exchangeRate: Double
    /** Unique identification to unambiguously identify the foreign exchange contract. */
    public var contractIdentification: String?
    /** Date and time at which an exchange rate is quoted.All dates in the JSON payloads are represented in ISO 8601 date-time format.  All date-time fields in responses must include the timezone. An example is below: 2017-04-05T10:43:07+00:00 */
    public var quotationDate: Date?
    public var instructedAmount: OBCurrencyExchange5InstructedAmount?

    public init(sourceCurrency: String, targetCurrency: String?, unitCurrency: String?, exchangeRate: Double, contractIdentification: String?, quotationDate: Date?, instructedAmount: OBCurrencyExchange5InstructedAmount?) {
        self.sourceCurrency = sourceCurrency
        self.targetCurrency = targetCurrency
        self.unitCurrency = unitCurrency
        self.exchangeRate = exchangeRate
        self.contractIdentification = contractIdentification
        self.quotationDate = quotationDate
        self.instructedAmount = instructedAmount
    }

    public enum CodingKeys: String, CodingKey { 
        case sourceCurrency = "SourceCurrency"
        case targetCurrency = "TargetCurrency"
        case unitCurrency = "UnitCurrency"
        case exchangeRate = "ExchangeRate"
        case contractIdentification = "ContractIdentification"
        case quotationDate = "QuotationDate"
        case instructedAmount = "InstructedAmount"
    }


}
