//
// OBWriteDomesticScheduled2.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct OBWriteDomesticScheduled2: Codable {

    public var data: OBWriteDomesticScheduled2Data
    public var risk: OBRisk1

    public init(data: OBWriteDomesticScheduled2Data, risk: OBRisk1) {
        self.data = data
        self.risk = risk
    }

    public enum CodingKeys: String, CodingKey { 
        case data = "Data"
        case risk = "Risk"
    }


}

