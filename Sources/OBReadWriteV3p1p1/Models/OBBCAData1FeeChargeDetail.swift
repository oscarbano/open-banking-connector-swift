//
// OBBCAData1FeeChargeDetail.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Other fees/charges details */

public struct OBBCAData1FeeChargeDetail: Codable {

    public enum FeeCategory: String, Codable { 
        case other = "Other"
        case servicing = "Servicing"
    }
    public enum FeeType: String, Codable { 
        case other = "Other"
        case serviceCAccountFee = "ServiceCAccountFee"
        case serviceCAccountFeeMonthly = "ServiceCAccountFeeMonthly"
        case serviceCAccountFeeQuarterly = "ServiceCAccountFeeQuarterly"
        case serviceCFixedTariff = "ServiceCFixedTariff"
        case serviceCBusiDepAccBreakage = "ServiceCBusiDepAccBreakage"
        case serviceCMinimumMonthlyFee = "ServiceCMinimumMonthlyFee"
        case serviceCOther = "ServiceCOther"
    }
    public enum FeeRateType: String, Codable { 
        case gross = "Gross"
        case other = "Other"
    }
    public enum ApplicationFrequency: String, Codable { 
        case onClosing = "OnClosing"
        case onOpening = "OnOpening"
        case chargingPeriod = "ChargingPeriod"
        case daily = "Daily"
        case perItem = "PerItem"
        case monthly = "Monthly"
        case onAnniversary = "OnAnniversary"
        case other = "Other"
        case perHundredPounds = "PerHundredPounds"
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
        case onClosing = "OnClosing"
        case onOpening = "OnOpening"
        case chargingPeriod = "ChargingPeriod"
        case daily = "Daily"
        case perItem = "PerItem"
        case monthly = "Monthly"
        case onAnniversary = "OnAnniversary"
        case other = "Other"
        case perHundredPounds = "PerHundredPounds"
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
    /** Fee/charge which is usually negotiable rather than a fixed amount */
    public var negotiableIndicator: Bool?
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
    /** Details about any caps (maximum charges) that apply to a particular or group of fee/charge */
    public var feeChargeCap: [OBBCAData1FeeChargeCap]?
    public var otherFeeCategoryType: OtherFeeCategoryType?
    public var otherFeeType: OtherFeeType1?
    public var otherFeeRateType: OtherFeeRateType1?
    public var otherApplicationFrequency: OtherApplicationFrequency1?
    public var otherCalculationFrequency: OtherCalculationFrequency1?
    public var feeApplicableRange: FeeApplicableRange?

    public init(feeCategory: FeeCategory, feeType: FeeType, negotiableIndicator: Bool?, feeAmount: String?, feeRate: String?, feeRateType: FeeRateType?, applicationFrequency: ApplicationFrequency, calculationFrequency: CalculationFrequency?, notes: [String]?, feeChargeCap: [OBBCAData1FeeChargeCap]?, otherFeeCategoryType: OtherFeeCategoryType?, otherFeeType: OtherFeeType1?, otherFeeRateType: OtherFeeRateType1?, otherApplicationFrequency: OtherApplicationFrequency1?, otherCalculationFrequency: OtherCalculationFrequency1?, feeApplicableRange: FeeApplicableRange?) {
        self.feeCategory = feeCategory
        self.feeType = feeType
        self.negotiableIndicator = negotiableIndicator
        self.feeAmount = feeAmount
        self.feeRate = feeRate
        self.feeRateType = feeRateType
        self.applicationFrequency = applicationFrequency
        self.calculationFrequency = calculationFrequency
        self.notes = notes
        self.feeChargeCap = feeChargeCap
        self.otherFeeCategoryType = otherFeeCategoryType
        self.otherFeeType = otherFeeType
        self.otherFeeRateType = otherFeeRateType
        self.otherApplicationFrequency = otherApplicationFrequency
        self.otherCalculationFrequency = otherCalculationFrequency
        self.feeApplicableRange = feeApplicableRange
    }

    public enum CodingKeys: String, CodingKey { 
        case feeCategory = "FeeCategory"
        case feeType = "FeeType"
        case negotiableIndicator = "NegotiableIndicator"
        case feeAmount = "FeeAmount"
        case feeRate = "FeeRate"
        case feeRateType = "FeeRateType"
        case applicationFrequency = "ApplicationFrequency"
        case calculationFrequency = "CalculationFrequency"
        case notes = "Notes"
        case feeChargeCap = "FeeChargeCap"
        case otherFeeCategoryType = "OtherFeeCategoryType"
        case otherFeeType = "OtherFeeType"
        case otherFeeRateType = "OtherFeeRateType"
        case otherApplicationFrequency = "OtherApplicationFrequency"
        case otherCalculationFrequency = "OtherCalculationFrequency"
        case feeApplicableRange = "FeeApplicableRange"
    }


}

