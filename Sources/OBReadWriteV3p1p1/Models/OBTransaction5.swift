//
// OBTransaction5.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Provides further details on an entry in the report. */

public struct OBTransaction5: Codable {

    public enum CreditDebitIndicator: String, Codable { 
        case credit = "Credit"
        case debit = "Debit"
    }
    public var accountId: AccountId
    /** Unique identifier for the transaction within an servicing institution. This identifier is both unique and immutable. */
    public var transactionId: String?
    /** Unique reference for the transaction. This reference is optionally populated, and may as an example be the FPID in the Faster Payments context. */
    public var transactionReference: String?
    /** Unique reference for the statement. This reference may be optionally populated if available. */
    public var statementReference: [String]?
    /** Indicates whether the transaction is a credit or a debit entry. */
    public var creditDebitIndicator: CreditDebitIndicator
    public var status: OBEntryStatus1Code
    /** Date and time when a transaction entry is posted to an account on the account servicer&#39;s books. Usage: Booking date is the expected booking date, unless the status is booked, in which case it is the actual booking date. All dates in the JSON payloads are represented in ISO 8601 date-time format.  All date-time fields in responses must include the timezone. An example is below: 2017-04-05T10:43:07+00:00 */
    public var bookingDateTime: Date
    /** Date and time at which assets become available to the account owner in case of a credit entry, or cease to be available to the account owner in case of a debit transaction entry. Usage: If transaction entry status is pending and value date is present, then the value date refers to an expected/requested value date. For transaction entries subject to availability/float and for which availability information is provided, the value date must not be used. In this case the availability component identifies the number of availability days. All dates in the JSON payloads are represented in ISO 8601 date-time format.  All date-time fields in responses must include the timezone. An example is below: 2017-04-05T10:43:07+00:00 */
    public var valueDateTime: Date?
    /** Information that locates and identifies a specific address for a transaction entry, that is presented in free format text. */
    public var addressLine: String?
    public var amount: OBActiveOrHistoricCurrencyAndAmount
    public var chargeAmount: OBActiveOrHistoricCurrencyAndAmount?
    public var currencyExchange: OBCurrencyExchange5?
    public var bankTransactionCode: OBBankTransactionCodeStructure1?
    public var proprietaryBankTransactionCode: OBTransaction5ProprietaryBankTransactionCode?
    public var cardInstrument: OBTransactionCardInstrument1?
    public var supplementaryData: OBSupplementaryData1?
    public var transactionInformation: TransactionInformation?
    public var balance: OBTransactionCashBalance?
    public var merchantDetails: OBMerchantDetails1?
    public var creditorAgent: OBBranchAndFinancialInstitutionIdentification6?
    public var creditorAccount: OBCashAccount6?
    public var debtorAgent: OBBranchAndFinancialInstitutionIdentification6?
    public var debtorAccount: OBCashAccount6?

    public init(accountId: AccountId, transactionId: String?, transactionReference: String?, statementReference: [String]?, creditDebitIndicator: CreditDebitIndicator, status: OBEntryStatus1Code, bookingDateTime: Date, valueDateTime: Date?, addressLine: String?, amount: OBActiveOrHistoricCurrencyAndAmount, chargeAmount: OBActiveOrHistoricCurrencyAndAmount?, currencyExchange: OBCurrencyExchange5?, bankTransactionCode: OBBankTransactionCodeStructure1?, proprietaryBankTransactionCode: OBTransaction5ProprietaryBankTransactionCode?, cardInstrument: OBTransactionCardInstrument1?, supplementaryData: OBSupplementaryData1?, transactionInformation: TransactionInformation?, balance: OBTransactionCashBalance?, merchantDetails: OBMerchantDetails1?, creditorAgent: OBBranchAndFinancialInstitutionIdentification6?, creditorAccount: OBCashAccount6?, debtorAgent: OBBranchAndFinancialInstitutionIdentification6?, debtorAccount: OBCashAccount6?) {
        self.accountId = accountId
        self.transactionId = transactionId
        self.transactionReference = transactionReference
        self.statementReference = statementReference
        self.creditDebitIndicator = creditDebitIndicator
        self.status = status
        self.bookingDateTime = bookingDateTime
        self.valueDateTime = valueDateTime
        self.addressLine = addressLine
        self.amount = amount
        self.chargeAmount = chargeAmount
        self.currencyExchange = currencyExchange
        self.bankTransactionCode = bankTransactionCode
        self.proprietaryBankTransactionCode = proprietaryBankTransactionCode
        self.cardInstrument = cardInstrument
        self.supplementaryData = supplementaryData
        self.transactionInformation = transactionInformation
        self.balance = balance
        self.merchantDetails = merchantDetails
        self.creditorAgent = creditorAgent
        self.creditorAccount = creditorAccount
        self.debtorAgent = debtorAgent
        self.debtorAccount = debtorAccount
    }

    public enum CodingKeys: String, CodingKey { 
        case accountId = "AccountId"
        case transactionId = "TransactionId"
        case transactionReference = "TransactionReference"
        case statementReference = "StatementReference"
        case creditDebitIndicator = "CreditDebitIndicator"
        case status = "Status"
        case bookingDateTime = "BookingDateTime"
        case valueDateTime = "ValueDateTime"
        case addressLine = "AddressLine"
        case amount = "Amount"
        case chargeAmount = "ChargeAmount"
        case currencyExchange = "CurrencyExchange"
        case bankTransactionCode = "BankTransactionCode"
        case proprietaryBankTransactionCode = "ProprietaryBankTransactionCode"
        case cardInstrument = "CardInstrument"
        case supplementaryData = "SupplementaryData"
        case transactionInformation = "TransactionInformation"
        case balance = "Balance"
        case merchantDetails = "MerchantDetails"
        case creditorAgent = "CreditorAgent"
        case creditorAccount = "CreditorAccount"
        case debtorAgent = "DebtorAgent"
        case debtorAccount = "DebtorAccount"
    }


}

