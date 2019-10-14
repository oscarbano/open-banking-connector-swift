//
// OBCashAccountCreditor3.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Provides the details to identify the beneficiary account. */

public struct OBCashAccountCreditor3: Codable {

    public var schemeName: OBExternalAccountIdentification4Code
    /** Identification assigned by an institution to identify an account. This identification is known by the account owner. */
    public var identification: String
    /** Name of the account, as assigned by the account servicing institution. Usage: The account name is the name or names of the account owner(s) represented at an account level. The account name is not the product name or the nickname of the account. OB: ASPSPs may carry out name validation for Confirmation of Payee, but it is not mandatory. */
    public var name: String
    /** This is secondary identification of the account, as assigned by the account servicing institution.  This can be used by building societies to additionally identify accounts with a roll number (in addition to a sort code and account number combination). */
    public var secondaryIdentification: String?

    public init(schemeName: OBExternalAccountIdentification4Code, identification: String, name: String, secondaryIdentification: String?) {
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

