//
// OBLoanInterestFeesChargeDetail1.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Other fees/charges details */

public struct OBLoanInterestFeesChargeDetail1: Codable {

    public var feeType: OBFeeType1Code
    /** Fee/charge which is usually negotiable rather than a fixed amount */
    public var negotiableIndicator: Bool?
    /** Fee Amount charged for a fee/charge (where it is charged in terms of an amount rather than a rate) */
    public var feeAmount: Double?
    /** Fee Amount charged for a fee/charge (where it is charged in terms of an amount rather than a rate) */
    public var feeRate: Double?
    public var feeRateType: OBInterestRateType1Code?
    public var applicationFrequency: OBFeeFrequency1Code
    public var calculationFrequency: OBFeeFrequency1Code
    /** Optional additional notes to supplement the fee/charge details. */
    public var notes: [String]?
    public var otherFeeType: OBOtherFeeChargeDetailType?
    public var otherFeeRateType: OBOtherCodeType1?
    public var otherApplicationFrequency: OBOtherCodeType1?
    public var otherCalculationFrequency: OBOtherCodeType1?

    public init(feeType: OBFeeType1Code, negotiableIndicator: Bool?, feeAmount: Double?, feeRate: Double?, feeRateType: OBInterestRateType1Code?, applicationFrequency: OBFeeFrequency1Code, calculationFrequency: OBFeeFrequency1Code, notes: [String]?, otherFeeType: OBOtherFeeChargeDetailType?, otherFeeRateType: OBOtherCodeType1?, otherApplicationFrequency: OBOtherCodeType1?, otherCalculationFrequency: OBOtherCodeType1?) {
        self.feeType = feeType
        self.negotiableIndicator = negotiableIndicator
        self.feeAmount = feeAmount
        self.feeRate = feeRate
        self.feeRateType = feeRateType
        self.applicationFrequency = applicationFrequency
        self.calculationFrequency = calculationFrequency
        self.notes = notes
        self.otherFeeType = otherFeeType
        self.otherFeeRateType = otherFeeRateType
        self.otherApplicationFrequency = otherApplicationFrequency
        self.otherCalculationFrequency = otherCalculationFrequency
    }

    public enum CodingKeys: String, CodingKey { 
        case feeType = "FeeType"
        case negotiableIndicator = "NegotiableIndicator"
        case feeAmount = "FeeAmount"
        case feeRate = "FeeRate"
        case feeRateType = "FeeRateType"
        case applicationFrequency = "ApplicationFrequency"
        case calculationFrequency = "CalculationFrequency"
        case notes = "Notes"
        case otherFeeType = "OtherFeeType"
        case otherFeeRateType = "OtherFeeRateType"
        case otherApplicationFrequency = "OtherApplicationFrequency"
        case otherCalculationFrequency = "OtherCalculationFrequency"
    }


}

