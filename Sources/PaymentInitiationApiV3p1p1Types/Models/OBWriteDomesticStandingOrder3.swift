//
// OBWriteDomesticStandingOrder3.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct OBWriteDomesticStandingOrder3: Codable {

    public var data: OBWriteDataDomesticStandingOrder3
    public var risk: OBRisk1

    public init(data: OBWriteDataDomesticStandingOrder3, risk: OBRisk1) {
        self.data = data
        self.risk = risk
    }

    public enum CodingKeys: String, CodingKey { 
        case data = "Data"
        case risk = "Risk"
    }


}

