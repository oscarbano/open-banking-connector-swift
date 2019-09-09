//
// OBScheduledPayment2Detail.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct OBScheduledPayment2Detail: Codable {

    public var accountId: AccountId
    public var scheduledPaymentId: ScheduledPaymentId?
    public var scheduledPaymentDateTime: ScheduledPaymentDateTime
    public var scheduledType: OBExternalScheduleType1Code
    public var reference: Reference?
    public var instructedAmount: OBActiveOrHistoricCurrencyAndAmount9
    public var creditorAgent: OBBranchAndFinancialInstitutionIdentification51?
    public var creditorAccount: OBCashAccount50

    public init(accountId: AccountId, scheduledPaymentId: ScheduledPaymentId?, scheduledPaymentDateTime: ScheduledPaymentDateTime, scheduledType: OBExternalScheduleType1Code, reference: Reference?, instructedAmount: OBActiveOrHistoricCurrencyAndAmount9, creditorAgent: OBBranchAndFinancialInstitutionIdentification51?, creditorAccount: OBCashAccount50) {
        self.accountId = accountId
        self.scheduledPaymentId = scheduledPaymentId
        self.scheduledPaymentDateTime = scheduledPaymentDateTime
        self.scheduledType = scheduledType
        self.reference = reference
        self.instructedAmount = instructedAmount
        self.creditorAgent = creditorAgent
        self.creditorAccount = creditorAccount
    }

    public enum CodingKeys: String, CodingKey { 
        case accountId = "AccountId"
        case scheduledPaymentId = "ScheduledPaymentId"
        case scheduledPaymentDateTime = "ScheduledPaymentDateTime"
        case scheduledType = "ScheduledType"
        case reference = "Reference"
        case instructedAmount = "InstructedAmount"
        case creditorAgent = "CreditorAgent"
        case creditorAccount = "CreditorAccount"
    }


}

