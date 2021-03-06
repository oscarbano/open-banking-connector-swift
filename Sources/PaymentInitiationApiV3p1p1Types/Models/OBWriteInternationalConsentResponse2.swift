//
// OBWriteInternationalConsentResponse2.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct OBWriteInternationalConsentResponse2: Codable {

    public var data: OBWriteDataInternationalConsentResponse2
    public var risk: OBRisk1
    public var links: Links
    public var meta: Meta

    public init(data: OBWriteDataInternationalConsentResponse2, risk: OBRisk1, links: Links, meta: Meta) {
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

