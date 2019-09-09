//
// OBReadProduct2DataOtherProductTypeOverdraftOverdraftFeeChargeDetail.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details about the fees/charges */

public struct OBReadProduct2DataOtherProductTypeOverdraftOverdraftFeeChargeDetail: Codable {

    public var feeType: OBOverdraftFeeType1Code
    /** Indicates whether fee and charges are negotiable */
    public var negotiableIndicator: Bool?
    /** Indicates if the fee/charge is already covered by an &#39;Overdraft Control&#39; fee or not. */
    public var overdraftControlIndicator: Bool?
    public var incrementalBorrowingAmount: OBAmount11?
    public var feeAmount: OBAmount12?
    public var feeRate: OBRate10?
    public var feeRateType: OBInterestRateType1Code0?
    public var applicationFrequency: OBFeeFrequency1Code0
    public var calculationFrequency: OBFeeFrequency1Code1?
    public var notes: [String]?
    public var overdraftFeeChargeCap: [OBReadProduct2DataOtherProductTypeOverdraftOverdraftFeeChargeCap]?
    public var otherFeeType: OBOtherCodeType13?
    public var otherFeeRateType: OBOtherCodeType14?
    public var otherApplicationFrequency: OBOtherCodeType11?
    public var otherCalculationFrequency: OBOtherCodeType12?

    public init(feeType: OBOverdraftFeeType1Code, negotiableIndicator: Bool?, overdraftControlIndicator: Bool?, incrementalBorrowingAmount: OBAmount11?, feeAmount: OBAmount12?, feeRate: OBRate10?, feeRateType: OBInterestRateType1Code0?, applicationFrequency: OBFeeFrequency1Code0, calculationFrequency: OBFeeFrequency1Code1?, notes: [String]?, overdraftFeeChargeCap: [OBReadProduct2DataOtherProductTypeOverdraftOverdraftFeeChargeCap]?, otherFeeType: OBOtherCodeType13?, otherFeeRateType: OBOtherCodeType14?, otherApplicationFrequency: OBOtherCodeType11?, otherCalculationFrequency: OBOtherCodeType12?) {
        self.feeType = feeType
        self.negotiableIndicator = negotiableIndicator
        self.overdraftControlIndicator = overdraftControlIndicator
        self.incrementalBorrowingAmount = incrementalBorrowingAmount
        self.feeAmount = feeAmount
        self.feeRate = feeRate
        self.feeRateType = feeRateType
        self.applicationFrequency = applicationFrequency
        self.calculationFrequency = calculationFrequency
        self.notes = notes
        self.overdraftFeeChargeCap = overdraftFeeChargeCap
        self.otherFeeType = otherFeeType
        self.otherFeeRateType = otherFeeRateType
        self.otherApplicationFrequency = otherApplicationFrequency
        self.otherCalculationFrequency = otherCalculationFrequency
    }

    public enum CodingKeys: String, CodingKey { 
        case feeType = "FeeType"
        case negotiableIndicator = "NegotiableIndicator"
        case overdraftControlIndicator = "OverdraftControlIndicator"
        case incrementalBorrowingAmount = "IncrementalBorrowingAmount"
        case feeAmount = "FeeAmount"
        case feeRate = "FeeRate"
        case feeRateType = "FeeRateType"
        case applicationFrequency = "ApplicationFrequency"
        case calculationFrequency = "CalculationFrequency"
        case notes = "Notes"
        case overdraftFeeChargeCap = "OverdraftFeeChargeCap"
        case otherFeeType = "OtherFeeType"
        case otherFeeRateType = "OtherFeeRateType"
        case otherApplicationFrequency = "OtherApplicationFrequency"
        case otherCalculationFrequency = "OtherCalculationFrequency"
    }


}

