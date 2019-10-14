//
// OBWriteDomesticStandingOrder3DataInitiationCreditorAccount.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Identification assigned by an institution to identify an account. This identification is known by the account owner. */

public struct OBWriteDomesticStandingOrder3DataInitiationCreditorAccount: Codable {

    public var schemeName: OBExternalAccountIdentification4Code
    public var identification: Identification
    /** The account name is the name or names of the account owner(s) represented at an account level. Note, the account name is not the product name or the nickname of the account. OB: ASPSPs may carry out name validation for Confirmation of Payee, but it is not mandatory. */
    public var name: String
    public var secondaryIdentification: SecondaryIdentification?

    public init(schemeName: OBExternalAccountIdentification4Code, identification: Identification, name: String, secondaryIdentification: SecondaryIdentification?) {
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

