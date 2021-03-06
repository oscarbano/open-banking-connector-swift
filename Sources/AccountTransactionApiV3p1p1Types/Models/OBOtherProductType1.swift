//
// OBOtherProductType1.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Other product type details associated with the account. */

public struct OBOtherProductType1: Codable {

    /** Long name associated with the product */
    public var name: String
    /** Description of the Product associated with the account */
    public var _description: String
    public var productDetails: OBOtherProductDetails1?
    public var creditInterest: OBCreditInterest1?
    public var overdraft: OBOverdraft1?
    public var loanInterest: OBLoanInterest1?
    public var repayment: OBRepayment1?
    /** Contains details of fees and charges which are not associated with either Overdraft or features/benefits */
    public var otherFeesCharges: [OBOtherFeesAndCharges1]?
    public var supplementaryData: OBSupplementaryData1?

    public init(name: String, _description: String, productDetails: OBOtherProductDetails1?, creditInterest: OBCreditInterest1?, overdraft: OBOverdraft1?, loanInterest: OBLoanInterest1?, repayment: OBRepayment1?, otherFeesCharges: [OBOtherFeesAndCharges1]?, supplementaryData: OBSupplementaryData1?) {
        self.name = name
        self._description = _description
        self.productDetails = productDetails
        self.creditInterest = creditInterest
        self.overdraft = overdraft
        self.loanInterest = loanInterest
        self.repayment = repayment
        self.otherFeesCharges = otherFeesCharges
        self.supplementaryData = supplementaryData
    }

    public enum CodingKeys: String, CodingKey { 
        case name = "Name"
        case _description = "Description"
        case productDetails = "ProductDetails"
        case creditInterest = "CreditInterest"
        case overdraft = "Overdraft"
        case loanInterest = "LoanInterest"
        case repayment = "Repayment"
        case otherFeesCharges = "OtherFeesCharges"
        case supplementaryData = "SupplementaryData"
    }


}

