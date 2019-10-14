//
// OBWriteDomesticScheduledConsentResponse3.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct OBWriteDomesticScheduledConsentResponse3: Codable {

    public var data: OBWriteDomesticScheduledConsentResponse3Data
    public var risk: OBRisk1
    public var links: Links?
    public var meta: Meta?

    public init(data: OBWriteDomesticScheduledConsentResponse3Data, risk: OBRisk1, links: Links?, meta: Meta?) {
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

