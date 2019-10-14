//
// OBWriteDomesticScheduled2Data.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct OBWriteDomesticScheduled2Data: Codable {

    /** OB: Unique identification as assigned by the ASPSP to uniquely identify the consent resource. */
    public var consentId: String
    public var initiation: OBWriteDomesticScheduled2DataInitiation

    public init(consentId: String, initiation: OBWriteDomesticScheduled2DataInitiation) {
        self.consentId = consentId
        self.initiation = initiation
    }

    public enum CodingKeys: String, CodingKey { 
        case consentId = "ConsentId"
        case initiation = "Initiation"
    }


}

