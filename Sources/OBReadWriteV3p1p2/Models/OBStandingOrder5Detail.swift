//
// OBStandingOrder5Detail.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct OBStandingOrder5Detail: Codable {

    public var accountId: AccountId
    public var standingOrderId: StandingOrderId?
    public var frequency: Frequency1
    public var reference: Reference?
    public var firstPaymentDateTime: FirstPaymentDateTime?
    public var nextPaymentDateTime: NextPaymentDateTime?
    public var finalPaymentDateTime: FinalPaymentDateTime?
    public var standingOrderStatusCode: OBExternalStandingOrderStatus1Code?
    public var firstPaymentAmount: OBActiveOrHistoricCurrencyAndAmount0?
    public var nextPaymentAmount: OBActiveOrHistoricCurrencyAndAmount1?
    public var finalPaymentAmount: OBActiveOrHistoricCurrencyAndAmount2?
    public var creditorAgent: OBBranchAndFinancialInstitutionIdentification51?
    public var creditorAccount: OBCashAccount50
    public var supplementaryData: OBSupplementaryData1?

    public init(accountId: AccountId, standingOrderId: StandingOrderId?, frequency: Frequency1, reference: Reference?, firstPaymentDateTime: FirstPaymentDateTime?, nextPaymentDateTime: NextPaymentDateTime?, finalPaymentDateTime: FinalPaymentDateTime?, standingOrderStatusCode: OBExternalStandingOrderStatus1Code?, firstPaymentAmount: OBActiveOrHistoricCurrencyAndAmount0?, nextPaymentAmount: OBActiveOrHistoricCurrencyAndAmount1?, finalPaymentAmount: OBActiveOrHistoricCurrencyAndAmount2?, creditorAgent: OBBranchAndFinancialInstitutionIdentification51?, creditorAccount: OBCashAccount50, supplementaryData: OBSupplementaryData1?) {
        self.accountId = accountId
        self.standingOrderId = standingOrderId
        self.frequency = frequency
        self.reference = reference
        self.firstPaymentDateTime = firstPaymentDateTime
        self.nextPaymentDateTime = nextPaymentDateTime
        self.finalPaymentDateTime = finalPaymentDateTime
        self.standingOrderStatusCode = standingOrderStatusCode
        self.firstPaymentAmount = firstPaymentAmount
        self.nextPaymentAmount = nextPaymentAmount
        self.finalPaymentAmount = finalPaymentAmount
        self.creditorAgent = creditorAgent
        self.creditorAccount = creditorAccount
        self.supplementaryData = supplementaryData
    }

    public enum CodingKeys: String, CodingKey { 
        case accountId = "AccountId"
        case standingOrderId = "StandingOrderId"
        case frequency = "Frequency"
        case reference = "Reference"
        case firstPaymentDateTime = "FirstPaymentDateTime"
        case nextPaymentDateTime = "NextPaymentDateTime"
        case finalPaymentDateTime = "FinalPaymentDateTime"
        case standingOrderStatusCode = "StandingOrderStatusCode"
        case firstPaymentAmount = "FirstPaymentAmount"
        case nextPaymentAmount = "NextPaymentAmount"
        case finalPaymentAmount = "FinalPaymentAmount"
        case creditorAgent = "CreditorAgent"
        case creditorAccount = "CreditorAccount"
        case supplementaryData = "SupplementaryData"
    }


}

