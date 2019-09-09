//
// OtherFeesChargesFeeChargeDetail.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Other fees/charges details */

public struct OtherFeesChargesFeeChargeDetail: Codable {

    public enum FeeCategory: String, Codable { 
        case other = "Other"
        case servicing = "Servicing"
    }
    public enum FeeType: String, Codable { 
        case serviceCAccountFee = "ServiceCAccountFee"
        case serviceCAccountFeeMonthly = "ServiceCAccountFeeMonthly"
        case serviceCOther = "ServiceCOther"
        case other = "Other"
    }
    public enum FeeRateType: String, Codable { 
        case linkedBaseRate = "LinkedBaseRate"
        case gross = "Gross"
        case net = "Net"
        case other = "Other"
    }
    public enum ApplicationFrequency: String, Codable { 
        case accountClosing = "AccountClosing"
        case accountOpening = "AccountOpening"
        case academicTerm = "AcademicTerm"
        case chargingPeriod = "ChargingPeriod"
        case daily = "Daily"
        case perItem = "PerItem"
        case monthly = "Monthly"
        case onAccountAnniversary = "OnAccountAnniversary"
        case other = "Other"
        case perHour = "PerHour"
        case perOccurrence = "PerOccurrence"
        case perSheet = "PerSheet"
        case perTransaction = "PerTransaction"
        case perTransactionAmount = "PerTransactionAmount"
        case perTransactionPercentage = "PerTransactionPercentage"
        case quarterly = "Quarterly"
        case sixMonthly = "SixMonthly"
        case statementMonthly = "StatementMonthly"
        case weekly = "Weekly"
        case yearly = "Yearly"
    }
    public enum CalculationFrequency: String, Codable { 
        case accountClosing = "AccountClosing"
        case accountOpening = "AccountOpening"
        case academicTerm = "AcademicTerm"
        case chargingPeriod = "ChargingPeriod"
        case daily = "Daily"
        case perItem = "PerItem"
        case monthly = "Monthly"
        case onAccountAnniversary = "OnAccountAnniversary"
        case other = "Other"
        case perHour = "PerHour"
        case perOccurrence = "PerOccurrence"
        case perSheet = "PerSheet"
        case perTransaction = "PerTransaction"
        case perTransactionAmount = "PerTransactionAmount"
        case perTransactionPercentage = "PerTransactionPercentage"
        case quarterly = "Quarterly"
        case sixMonthly = "SixMonthly"
        case statementMonthly = "StatementMonthly"
        case weekly = "Weekly"
        case yearly = "Yearly"
    }
    /** Categorisation of fees and charges into standard categories. */
    public var feeCategory: FeeCategory
    /** Fee/Charge Type */
    public var feeType: FeeType
    /** Fee Amount charged for a fee/charge (where it is charged in terms of an amount rather than a rate) */
    public var feeAmount: String?
    /** Rate charged for Fee/Charge (where it is charged in terms of a rate rather than an amount) */
    public var feeRate: String?
    /** Rate type for Fee/Charge (where it is charged in terms of a rate rather than an amount) */
    public var feeRateType: FeeRateType?
    /** How frequently the fee/charge is applied to the account */
    public var applicationFrequency: ApplicationFrequency
    /** How frequently the fee/charge is calculated */
    public var calculationFrequency: CalculationFrequency?
    /** Optional additional notes to supplement the fee/charge details. */
    public var notes: [String]?
    public var otherFeeCategoryType: OtherFeeCategoryType?
    public var otherFeeType: OtherFeeType1?
    public var otherFeeRateType: OtherFeeRateType1?
    public var otherApplicationFrequency: OtherApplicationFrequency1?
    public var otherCalculationFrequency: OtherCalculationFrequency1?
    /** Details about any caps (maximum charges) that apply to a particular fee/charge */
    public var feeChargeCap: [OtherFeesChargesFeeChargeCap]?
    public var feeApplicableRange: FeeApplicableRange?

    public init(feeCategory: FeeCategory, feeType: FeeType, feeAmount: String?, feeRate: String?, feeRateType: FeeRateType?, applicationFrequency: ApplicationFrequency, calculationFrequency: CalculationFrequency?, notes: [String]?, otherFeeCategoryType: OtherFeeCategoryType?, otherFeeType: OtherFeeType1?, otherFeeRateType: OtherFeeRateType1?, otherApplicationFrequency: OtherApplicationFrequency1?, otherCalculationFrequency: OtherCalculationFrequency1?, feeChargeCap: [OtherFeesChargesFeeChargeCap]?, feeApplicableRange: FeeApplicableRange?) {
        self.feeCategory = feeCategory
        self.feeType = feeType
        self.feeAmount = feeAmount
        self.feeRate = feeRate
        self.feeRateType = feeRateType
        self.applicationFrequency = applicationFrequency
        self.calculationFrequency = calculationFrequency
        self.notes = notes
        self.otherFeeCategoryType = otherFeeCategoryType
        self.otherFeeType = otherFeeType
        self.otherFeeRateType = otherFeeRateType
        self.otherApplicationFrequency = otherApplicationFrequency
        self.otherCalculationFrequency = otherCalculationFrequency
        self.feeChargeCap = feeChargeCap
        self.feeApplicableRange = feeApplicableRange
    }

    public enum CodingKeys: String, CodingKey { 
        case feeCategory = "FeeCategory"
        case feeType = "FeeType"
        case feeAmount = "FeeAmount"
        case feeRate = "FeeRate"
        case feeRateType = "FeeRateType"
        case applicationFrequency = "ApplicationFrequency"
        case calculationFrequency = "CalculationFrequency"
        case notes = "Notes"
        case otherFeeCategoryType = "OtherFeeCategoryType"
        case otherFeeType = "OtherFeeType"
        case otherFeeRateType = "OtherFeeRateType"
        case otherApplicationFrequency = "OtherApplicationFrequency"
        case otherCalculationFrequency = "OtherCalculationFrequency"
        case feeChargeCap = "FeeChargeCap"
        case feeApplicableRange = "FeeApplicableRange"
    }


}
