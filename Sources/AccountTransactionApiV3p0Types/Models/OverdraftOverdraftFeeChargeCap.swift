//
// OverdraftOverdraftFeeChargeCap.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details about any caps (maximum charges) that apply to a particular fee/charge. Capping can either be based on an amount (in gbp), an amount (in items) or a rate. */

public struct OverdraftOverdraftFeeChargeCap: Codable {

    public enum FeeType: String, Codable { 
        case arrangedOverdraft = "ArrangedOverdraft"
        case annualReview = "AnnualReview"
        case emergencyBorrowing = "EmergencyBorrowing"
        case borrowingItem = "BorrowingItem"
        case overdraftRenewal = "OverdraftRenewal"
        case overdraftSetup = "OverdraftSetup"
        case surcharge = "Surcharge"
        case tempOverdraft = "TempOverdraft"
        case unauthorisedBorrowing = "UnauthorisedBorrowing"
        case unauthorisedPaidTrans = "UnauthorisedPaidTrans"
        case other = "Other"
        case unauthorisedUnpaidTrans = "UnauthorisedUnpaidTrans"
    }
    public enum MinMaxType: String, Codable { 
        case minimum = "Minimum"
        case maximum = "Maximum"
    }
    public enum CappingPeriod: String, Codable { 
        case day = "Day"
        case halfYear = "Half Year"
        case month = "Month"
        case quarter = "Quarter"
        case week = "Week"
        case year = "Year"
    }
    /** Fee/charge type which is being capped */
    public var feeType: [FeeType]
    /** Min Max type */
    public var minMaxType: MinMaxType
    /** Indicates whether the advertised overdraft rate is guaranteed to be offered to a borrower by the bank e.g. if it’s part of a government scheme, or whether the rate may vary dependent on the applicant’s circumstances. */
    public var feeCapOccurrence: Float?
    /** Cap amount charged for a fee/charge */
    public var feeCapAmount: String?
    /** Period e.g. day, week, month etc. for which the fee/charge is capped */
    public var cappingPeriod: CappingPeriod?
    /** Notes related to Overdraft fee charge cap */
    public var notes: [String]?
    /** Other fee type code which is not available in the standard code set */
    public var otherFeeType: [OverdraftOtherFeeType]?

    public init(feeType: [FeeType], minMaxType: MinMaxType, feeCapOccurrence: Float?, feeCapAmount: String?, cappingPeriod: CappingPeriod?, notes: [String]?, otherFeeType: [OverdraftOtherFeeType]?) {
        self.feeType = feeType
        self.minMaxType = minMaxType
        self.feeCapOccurrence = feeCapOccurrence
        self.feeCapAmount = feeCapAmount
        self.cappingPeriod = cappingPeriod
        self.notes = notes
        self.otherFeeType = otherFeeType
    }

    public enum CodingKeys: String, CodingKey { 
        case feeType = "FeeType"
        case minMaxType = "MinMaxType"
        case feeCapOccurrence = "FeeCapOccurrence"
        case feeCapAmount = "FeeCapAmount"
        case cappingPeriod = "CappingPeriod"
        case notes = "Notes"
        case otherFeeType = "OtherFeeType"
    }


}
