//
// OBWriteInternational2.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct OBWriteInternational2: Codable {

    public var data: OBWriteInternational2Data
    public var risk: OBRisk1

    public init(data: OBWriteInternational2Data, risk: OBRisk1) {
        self.data = data
        self.risk = risk
    }

    public enum CodingKeys: String, CodingKey { 
        case data = "Data"
        case risk = "Risk"
    }


}
