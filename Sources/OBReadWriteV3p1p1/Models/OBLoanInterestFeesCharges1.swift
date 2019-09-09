//
// OBLoanInterestFeesCharges1.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains details of fees and charges which are not associated with either LoanRepayment or features/benefits */

public struct OBLoanInterestFeesCharges1: Codable {

    /** Other fees/charges details */
    public var loanInterestFeeChargeDetail: [OBLoanInterestFeesChargeDetail1]
    /** Details about any caps (minimum/maximum charges) that apply to a particular fee/charge */
    public var loanInterestFeeChargeCap: [OBLoanInterestFeesChargeCap1]?

    public init(loanInterestFeeChargeDetail: [OBLoanInterestFeesChargeDetail1], loanInterestFeeChargeCap: [OBLoanInterestFeesChargeCap1]?) {
        self.loanInterestFeeChargeDetail = loanInterestFeeChargeDetail
        self.loanInterestFeeChargeCap = loanInterestFeeChargeCap
    }

    public enum CodingKeys: String, CodingKey { 
        case loanInterestFeeChargeDetail = "LoanInterestFeeChargeDetail"
        case loanInterestFeeChargeCap = "LoanInterestFeeChargeCap"
    }


}

