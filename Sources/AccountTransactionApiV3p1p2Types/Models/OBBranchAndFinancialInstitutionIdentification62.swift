//
// OBBranchAndFinancialInstitutionIdentification62.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Party that manages the account on behalf of the account owner, that is manages the registration and booking of entries on the account, calculates balances on the account and provides information about the account. This is the servicer of the beneficiary account. */

public struct OBBranchAndFinancialInstitutionIdentification62: Codable {

    public var schemeName: OBExternalFinancialInstitutionIdentification4Code?
    public var identification: Identification1?
    public var name: Name2?
    public var postalAddress: OBPostalAddress6?

    public init(schemeName: OBExternalFinancialInstitutionIdentification4Code?, identification: Identification1?, name: Name2?, postalAddress: OBPostalAddress6?) {
        self.schemeName = schemeName
        self.identification = identification
        self.name = name
        self.postalAddress = postalAddress
    }

    public enum CodingKeys: String, CodingKey { 
        case schemeName = "SchemeName"
        case identification = "Identification"
        case name = "Name"
        case postalAddress = "PostalAddress"
    }


}

