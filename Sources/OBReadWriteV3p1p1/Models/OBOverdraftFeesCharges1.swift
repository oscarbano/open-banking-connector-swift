//
// OBOverdraftFeesCharges1.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Overdraft fees and charges details */

public struct OBOverdraftFeesCharges1: Codable {

    /** Details about any caps (maximum charges) that apply to a particular fee/charge. Capping can either be based on an amount (in gbp), an amount (in items) or a rate. */
    public var overdraftFeeChargeCap: [OBOverdraftFeeChargeCap1]?
    /** Details about the fees/charges */
    public var overdraftFeeChargeDetail: [OBOverdraftFeesChargeDetails1]

    public init(overdraftFeeChargeCap: [OBOverdraftFeeChargeCap1]?, overdraftFeeChargeDetail: [OBOverdraftFeesChargeDetails1]) {
        self.overdraftFeeChargeCap = overdraftFeeChargeCap
        self.overdraftFeeChargeDetail = overdraftFeeChargeDetail
    }

    public enum CodingKeys: String, CodingKey { 
        case overdraftFeeChargeCap = "OverdraftFeeChargeCap"
        case overdraftFeeChargeDetail = "OverdraftFeeChargeDetail"
    }


}

