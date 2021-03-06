//
// OBCashAccount3.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Provides the details to identify the beneficiary account. */

public struct OBCashAccount3: Codable {

    /** Name of the identification scheme, in a coded form as published in an external list. */
    public var schemeName: String
    /** Beneficiary account identification. */
    public var identification: String
    /** Name of the account, as assigned by the account servicing institution. Usage: The account name is the name or names of the account owner(s) represented at an account level. The account name is not the product name or the nickname of the account. */
    public var name: String?
    /** This is secondary identification of the account, as assigned by the account servicing institution.  This can be used by building societies to additionally identify accounts with a roll number (in addition to a sort code and account number combination). */
    public var secondaryIdentification: String?

    public init(schemeName: String, identification: String, name: String?, secondaryIdentification: String?) {
        self.schemeName = schemeName
        self.identification = identification
        self.name = name
        self.secondaryIdentification = secondaryIdentification
    }

    public enum CodingKeys: String, CodingKey { 
        case schemeName = "SchemeName"
        case identification = "Identification"
        case name = "Name"
        case secondaryIdentification = "SecondaryIdentification"
    }


}

