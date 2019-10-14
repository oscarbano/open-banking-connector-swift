//
// OBReadProduct2DataOtherProductTypeLoanInterestLoanInterestFeeChargeDetail.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Other fees/charges details */

public struct OBReadProduct2DataOtherProductTypeLoanInterestLoanInterestFeeChargeDetail: Codable {

    public var feeType: OBFeeType1Code
    /** Fee/charge which is usually negotiable rather than a fixed amount */
    public var negotiableIndicator: Bool?
    public var feeAmount: OBAmount13?
    public var feeRate: OBRate11?
    public var feeRateType: OBInterestRateType1Code1?
    public var applicationFrequency: OBFeeFrequency1Code2
    public var calculationFrequency: OBFeeFrequency1Code3
    public var notes: [String]?
    public var otherFeeType: OBOtherFeeChargeDetailType?
    public var otherFeeRateType: OBOtherCodeType15?
    public var otherApplicationFrequency: OBOtherCodeType16?
    public var otherCalculationFrequency: OBOtherCodeType17?

    public init(feeType: OBFeeType1Code, negotiableIndicator: Bool?, feeAmount: OBAmount13?, feeRate: OBRate11?, feeRateType: OBInterestRateType1Code1?, applicationFrequency: OBFeeFrequency1Code2, calculationFrequency: OBFeeFrequency1Code3, notes: [String]?, otherFeeType: OBOtherFeeChargeDetailType?, otherFeeRateType: OBOtherCodeType15?, otherApplicationFrequency: OBOtherCodeType16?, otherCalculationFrequency: OBOtherCodeType17?) {
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
