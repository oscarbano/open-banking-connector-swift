//
// OBBranchAndFinancialInstitutionIdentification61.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Financial institution servicing an account for the debtor. */

public struct OBBranchAndFinancialInstitutionIdentification61: Codable {

    public var schemeName: OBExternalFinancialInstitutionIdentification4Code?
    public var identification: Identification2?
    public var name: Name2?
    public var postalAddress: OBPostalAddress6?

    public init(schemeName: OBExternalFinancialInstitutionIdentification4Code?, identification: Identification2?, name: Name2?, postalAddress: OBPostalAddress6?) {
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

