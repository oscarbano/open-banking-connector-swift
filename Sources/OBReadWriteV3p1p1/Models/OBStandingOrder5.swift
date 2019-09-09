//
// OBStandingOrder5.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct OBStandingOrder5: Codable {

    public var accountId: AccountId
    /** A unique and immutable identifier used to identify the standing order resource. This identifier has no meaning to the account owner. */
    public var standingOrderId: String?
    /** Individual Definitions: EvryDay - Every day EvryWorkgDay - Every working day IntrvlDay - An interval specified in number of calendar days (02 to 31) IntrvlWkDay - An interval specified in weeks (01 to 09), and the day within the week (01 to 07) WkInMnthDay - A monthly interval, specifying the week of the month (01 to 05) and day within the week (01 to 07) IntrvlMnthDay - An interval specified in months (between 01 to 06, 12, 24), specifying the day within the month (-05 to -01, 01 to 31) QtrDay - Quarterly (either ENGLISH, SCOTTISH, or RECEIVED) ENGLISH &#x3D; Paid on the 25th March, 24th June, 29th September and 25th December. SCOTTISH &#x3D; Paid on the 2nd February, 15th May, 1st August and 11th November. RECEIVED &#x3D; Paid on the 20th March, 19th June, 24th September and 20th December. Individual Patterns: EvryDay (ScheduleCode) EvryWorkgDay (ScheduleCode) IntrvlDay:NoOfDay (ScheduleCode + NoOfDay) IntrvlWkDay:IntervalInWeeks:DayInWeek (ScheduleCode + IntervalInWeeks + DayInWeek) WkInMnthDay:WeekInMonth:DayInWeek (ScheduleCode + WeekInMonth + DayInWeek) IntrvlMnthDay:IntervalInMonths:DayInMonth (ScheduleCode + IntervalInMonths + DayInMonth) QtrDay: + either (ENGLISH, SCOTTISH or RECEIVED) ScheduleCode + QuarterDay The regular expression for this element combines five smaller versions for each permitted pattern. To aid legibility - the components are presented individually here: EvryDay EvryWorkgDay IntrvlDay:((0[2-9])|([1-2][0-9])|3[0-1]) IntrvlWkDay:0[1-9]:0[1-7] WkInMnthDay:0[1-5]:0[1-7] IntrvlMnthDay:(0[1-6]|12|24):(-0[1-5]|0[1-9]|[12][0-9]|3[01]) QtrDay:(ENGLISH|SCOTTISH|RECEIVED) Full Regular Expression: ^(EvryDay)$|^(EvryWorkgDay)$|^(IntrvlDay:((0[2-9])|([1-2][0-9])|3[0-1]))$|^(IntrvlWkDay:0[1-9]:0[1-7])$|^(WkInMnthDay:0[1-5]:0[1-7])$|^(IntrvlMnthDay:(0[1-6]|12|24):(-0[1-5]|0[1-9]|[12][0-9]|3[01]))$|^(QtrDay:(ENGLISH|SCOTTISH|RECEIVED))$ */
    public var frequency: String
    /** Unique reference, as assigned by the creditor, to unambiguously refer to the payment transaction. Usage: If available, the initiating party should provide this reference in the structured remittance information, to enable reconciliation by the creditor upon receipt of the amount of money. If the business context requires the use of a creditor reference or a payment remit identification, and only one identifier can be passed through the end-to-end chain, the creditor&#39;s reference or payment remittance identification should be quoted in the end-to-end transaction identification. */
    public var reference: String?
    /** The date on which the first payment for a Standing Order schedule will be made. All dates in the JSON payloads are represented in ISO 8601 date-time format.  All date-time fields in responses must include the timezone. An example is below: 2017-04-05T10:43:07+00:00 */
    public var firstPaymentDateTime: Date?
    /** The date on which the next payment for a Standing Order schedule will be made. All dates in the JSON payloads are represented in ISO 8601 date-time format.  All date-time fields in responses must include the timezone. An example is below: 2017-04-05T10:43:07+00:00 */
    public var nextPaymentDateTime: Date?
    /** The date on which the final payment for a Standing Order schedule will be made. All dates in the JSON payloads are represented in ISO 8601 date-time format.  All date-time fields in responses must include the timezone. An example is below: 2017-04-05T10:43:07+00:00 */
    public var finalPaymentDateTime: Date?
    public var standingOrderStatusCode: OBExternalStandingOrderStatus1Code?
    public var firstPaymentAmount: OBActiveOrHistoricCurrencyAndAmount?
    public var nextPaymentAmount: OBActiveOrHistoricCurrencyAndAmount?
    public var finalPaymentAmount: OBActiveOrHistoricCurrencyAndAmount?
    public var supplementaryData: OBSupplementaryData1?
    public var creditorAgent: OBBranchAndFinancialInstitutionIdentification5?
    public var creditorAccount: OBCashAccount5?

    public init(accountId: AccountId, standingOrderId: String?, frequency: String, reference: String?, firstPaymentDateTime: Date?, nextPaymentDateTime: Date?, finalPaymentDateTime: Date?, standingOrderStatusCode: OBExternalStandingOrderStatus1Code?, firstPaymentAmount: OBActiveOrHistoricCurrencyAndAmount?, nextPaymentAmount: OBActiveOrHistoricCurrencyAndAmount?, finalPaymentAmount: OBActiveOrHistoricCurrencyAndAmount?, supplementaryData: OBSupplementaryData1?, creditorAgent: OBBranchAndFinancialInstitutionIdentification5?, creditorAccount: OBCashAccount5?) {
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
        self.supplementaryData = supplementaryData
        self.creditorAgent = creditorAgent
        self.creditorAccount = creditorAccount
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
        case supplementaryData = "SupplementaryData"
        case creditorAgent = "CreditorAgent"
        case creditorAccount = "CreditorAccount"
    }


}

