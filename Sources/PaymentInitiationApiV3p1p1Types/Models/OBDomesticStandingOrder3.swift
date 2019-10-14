//
// OBDomesticStandingOrder3.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The Initiation payload is sent by the initiating party to the ASPSP. It is used to request movement of funds from the debtor account to a creditor for a domestic standing order. */

public struct OBDomesticStandingOrder3: Codable {

    /** Individual Definitions: EvryDay - Every day EvryWorkgDay - Every working day IntrvlDay - An interval specified in number of calendar days (02 to 31) IntrvlWkDay - An interval specified in weeks (01 to 09), and the day within the week (01 to 07) WkInMnthDay - A monthly interval, specifying the week of the month (01 to 05) and day within the week (01 to 07) IntrvlMnthDay - An interval specified in months (between 01 to 06, 12, 24), specifying the day within the month (-05 to -01, 1 to 31) QtrDay - Quarterly (either ENGLISH, SCOTTISH, or RECEIVED). ENGLISH &#x3D; Paid on the 25th March, 24th June, 29th September and 25th December. SCOTTISH &#x3D; Paid on the 2nd February, 15th May, 1st August and 11th November. RECEIVED &#x3D; Paid on the 20th March, 19th June, 24th September and 20th December. Individual Patterns: EvryDay (ScheduleCode) EvryWorkgDay (ScheduleCode) IntrvlDay:NoOfDay (ScheduleCode + NoOfDay) IntrvlWkDay:IntervalInWeeks:DayInWeek (ScheduleCode + IntervalInWeeks + DayInWeek) WkInMnthDay:WeekInMonth:DayInWeek (ScheduleCode + WeekInMonth + DayInWeek) IntrvlMnthDay:IntervalInMonths:DayInMonth (ScheduleCode + IntervalInMonths + DayInMonth) QtrDay: + either (ENGLISH, SCOTTISH or RECEIVED) ScheduleCode + QuarterDay The regular expression for this element combines five smaller versions for each permitted pattern. To aid legibility - the components are presented individually here: EvryDay EvryWorkgDay IntrvlDay:((0[2-9])|([1-2][0-9])|3[0-1]) IntrvlWkDay:0[1-9]:0[1-7] WkInMnthDay:0[1-5]:0[1-7] IntrvlMnthDay:(0[1-6]|12|24):(-0[1-5]|0[1-9]|[12][0-9]|3[01]) QtrDay:(ENGLISH|SCOTTISH|RECEIVED) Full Regular Expression: ^(EvryDay)$|^(EvryWorkgDay)$|^(IntrvlDay:((0[2-9])|([1-2][0-9])|3[0-1]))$|^(IntrvlWkDay:0[1-9]:0[1-7])$|^(WkInMnthDay:0[1-5]:0[1-7])$|^(IntrvlMnthDay:(0[1-6]|12|24):(-0[1-5]|0[1-9]|[12][0-9]|3[01]))$|^(QtrDay:(ENGLISH|SCOTTISH|RECEIVED))$ */
    public var frequency: String
    /** Unique reference, as assigned by the creditor, to unambiguously refer to the payment transaction. Usage: If available, the initiating party should provide this reference in the structured remittance information, to enable reconciliation by the creditor upon receipt of the amount of money. If the business context requires the use of a creditor reference or a payment remit identification, and only one identifier can be passed through the end-to-end chain, the creditor&#39;s reference or payment remittance identification should be quoted in the end-to-end transaction identification. */
    public var reference: String?
    /** Number of the payments that will be made in completing this frequency sequence including any executed since the sequence start date. */
    public var numberOfPayments: String?
    /** The date on which the first payment for a Standing Order schedule will be made. All dates in the JSON payloads are represented in ISO 8601 date-time format.  All date-time fields in responses must include the timezone. An example is below: 2017-04-05T10:43:07+00:00 */
    public var firstPaymentDateTime: Date
    /** The date on which the first recurring payment for a Standing Order schedule will be made.  Usage: This must be populated only if the first recurring date is different to the first payment date. All dates in the JSON payloads are represented in ISO 8601 date-time format.  All date-time fields in responses must include the timezone. An example is below: 2017-04-05T10:43:07+00:00 */
    public var recurringPaymentDateTime: Date?
    /** The date on which the final payment for a Standing Order schedule will be made. All dates in the JSON payloads are represented in ISO 8601 date-time format.  All date-time fields in responses must include the timezone. An example is below: 2017-04-05T10:43:07+00:00 */
    public var finalPaymentDateTime: Date?
    public var firstPaymentAmount: OBDomesticStandingOrder3FirstPaymentAmount
    public var recurringPaymentAmount: OBDomesticStandingOrder3RecurringPaymentAmount?
    public var finalPaymentAmount: OBDomesticStandingOrder3FinalPaymentAmount?
    public var debtorAccount: OBCashAccountDebtor4?
    public var creditorAccount: OBCashAccountCreditor3
    public var supplementaryData: OBSupplementaryData1?

    public init(frequency: String, reference: String?, numberOfPayments: String?, firstPaymentDateTime: Date, recurringPaymentDateTime: Date?, finalPaymentDateTime: Date?, firstPaymentAmount: OBDomesticStandingOrder3FirstPaymentAmount, recurringPaymentAmount: OBDomesticStandingOrder3RecurringPaymentAmount?, finalPaymentAmount: OBDomesticStandingOrder3FinalPaymentAmount?, debtorAccount: OBCashAccountDebtor4?, creditorAccount: OBCashAccountCreditor3, supplementaryData: OBSupplementaryData1?) {
        self.frequency = frequency
        self.reference = reference
        self.numberOfPayments = numberOfPayments
        self.firstPaymentDateTime = firstPaymentDateTime
        self.recurringPaymentDateTime = recurringPaymentDateTime
        self.finalPaymentDateTime = finalPaymentDateTime
        self.firstPaymentAmount = firstPaymentAmount
        self.recurringPaymentAmount = recurringPaymentAmount
        self.finalPaymentAmount = finalPaymentAmount
        self.debtorAccount = debtorAccount
        self.creditorAccount = creditorAccount
        self.supplementaryData = supplementaryData
    }

    public enum CodingKeys: String, CodingKey { 
        case frequency = "Frequency"
        case reference = "Reference"
        case numberOfPayments = "NumberOfPayments"
        case firstPaymentDateTime = "FirstPaymentDateTime"
        case recurringPaymentDateTime = "RecurringPaymentDateTime"
        case finalPaymentDateTime = "FinalPaymentDateTime"
        case firstPaymentAmount = "FirstPaymentAmount"
        case recurringPaymentAmount = "RecurringPaymentAmount"
        case finalPaymentAmount = "FinalPaymentAmount"
        case debtorAccount = "DebtorAccount"
        case creditorAccount = "CreditorAccount"
        case supplementaryData = "SupplementaryData"
    }


}

