//
// BCAOtherFeesCharges.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains details of fees and charges which are not associated with either Overdraft or features/benefits */

public struct BCAOtherFeesCharges: Codable {

    public enum TariffType: String, Codable { 
        case electronic = "Electronic"
        case mixed = "Mixed"
        case other = "Other"
    }
    /** TariffType which defines the fee and charges. */
    public var tariffType: TariffType?
    /** Name of the tariff */
    public var tariffName: String?
    public var otherTariffType: OtherTariffType?
    /** Other fees/charges details */
    public var feeChargeDetail: [BCAFeeChargeDetail]
    /** Details about any caps (maximum charges) that apply to a particular or group of fee/charge */
    public var feeChargeCap: [BCAFeeChargeCap]?

    public init(tariffType: TariffType?, tariffName: String?, otherTariffType: OtherTariffType?, feeChargeDetail: [BCAFeeChargeDetail], feeChargeCap: [BCAFeeChargeCap]?) {
        self.tariffType = tariffType
        self.tariffName = tariffName
        self.otherTariffType = otherTariffType
        self.feeChargeDetail = feeChargeDetail
        self.feeChargeCap = feeChargeCap
    }

    public enum CodingKeys: String, CodingKey { 
        case tariffType = "TariffType"
        case tariffName = "TariffName"
        case otherTariffType = "OtherTariffType"
        case feeChargeDetail = "FeeChargeDetail"
        case feeChargeCap = "FeeChargeCap"
    }


}
