//
// OBTransaction3ProprietaryBankTransactionCode.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Set of elements to fully identify a proprietary bank transaction code. */

public struct OBTransaction3ProprietaryBankTransactionCode: Codable {

    /** Proprietary bank transaction code to identify the underlying transaction. */
    public var code: String
    /** Identification of the issuer of the proprietary bank transaction code. */
    public var issuer: String?

    public init(code: String, issuer: String?) {
        self.code = code
        self.issuer = issuer
    }

    public enum CodingKeys: String, CodingKey { 
        case code = "Code"
        case issuer = "Issuer"
    }


}

