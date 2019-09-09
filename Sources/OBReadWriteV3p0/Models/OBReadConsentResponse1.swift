//
// OBReadConsentResponse1.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct OBReadConsentResponse1: Codable {

    public var data: OBReadConsentResponse1Data
    public var risk: OBRisk2
    public var links: Links
    public var meta: Meta

    public init(data: OBReadConsentResponse1Data, risk: OBRisk2, links: Links, meta: Meta) {
        self.data = data
        self.risk = risk
        self.links = links
        self.meta = meta
    }

    public enum CodingKeys: String, CodingKey { 
        case data = "Data"
        case risk = "Risk"
        case links = "Links"
        case meta = "Meta"
    }


}

