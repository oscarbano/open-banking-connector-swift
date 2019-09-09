//
// OtherFeeType1.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Other Fee/charge type which is not available in the standard code set */

public struct OtherFeeType1: Codable {

    public enum FeeCategory: String, Codable { 
        case other = "Other"
        case servicing = "Servicing"
    }
    /** The four letter Mnemonic used within an XML file to identify a code */
    public var code: String?
    /** Categorisation of fees and charges into standard categories. */
    public var feeCategory: FeeCategory
    /** Long name associated with the code */
    public var name: String
    /** Description to describe the purpose of the code */
    public var _description: String

    public init(code: String?, feeCategory: FeeCategory, name: String, _description: String) {
        self.code = code
        self.feeCategory = feeCategory
        self.name = name
        self._description = _description
    }

    public enum CodingKeys: String, CodingKey { 
        case code = "Code"
        case feeCategory = "FeeCategory"
        case name = "Name"
        case _description = "Description"
    }


}

