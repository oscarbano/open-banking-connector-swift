//
// OBWriteDomesticScheduledConsent2.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct OBWriteDomesticScheduledConsent2: Codable {

    public var data: OBWriteDataDomesticScheduledConsent2
    public var risk: OBRisk1

    public init(data: OBWriteDataDomesticScheduledConsent2, risk: OBRisk1) {
        self.data = data
        self.risk = risk
    }

    public enum CodingKeys: String, CodingKey { 
        case data = "Data"
        case risk = "Risk"
    }


}

