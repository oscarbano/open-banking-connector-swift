//
// OBBCAData1.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct OBBCAData1: Codable {

    public var productDetails: ProductDetails?
    public var creditInterest: CreditInterest?
    public var overdraft: Overdraft?
    /** Contains details of fees and charges which are not associated with either Overdraft or features/benefits */
    public var otherFeesCharges: [OBBCAData1OtherFeesCharges]?

    public init(productDetails: ProductDetails?, creditInterest: CreditInterest?, overdraft: Overdraft?, otherFeesCharges: [OBBCAData1OtherFeesCharges]?) {
        self.productDetails = productDetails
        self.creditInterest = creditInterest
        self.overdraft = overdraft
        self.otherFeesCharges = otherFeesCharges
    }

    public enum CodingKeys: String, CodingKey { 
        case productDetails = "ProductDetails"
        case creditInterest = "CreditInterest"
        case overdraft = "Overdraft"
        case otherFeesCharges = "OtherFeesCharges"
    }


}

