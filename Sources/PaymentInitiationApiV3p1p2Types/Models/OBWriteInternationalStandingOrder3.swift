//
// OBWriteInternationalStandingOrder3.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct OBWriteInternationalStandingOrder3: Codable {

    public var data: OBWriteInternationalStandingOrder3Data
    public var risk: OBRisk1

    public init(data: OBWriteInternationalStandingOrder3Data, risk: OBRisk1) {
        self.data = data
        self.risk = risk
    }

    public enum CodingKeys: String, CodingKey { 
        case data = "Data"
        case risk = "Risk"
    }


}
