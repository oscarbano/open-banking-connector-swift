//
// OBWriteInternationalStandingOrderResponse3.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct OBWriteInternationalStandingOrderResponse3: Codable {

    public var data: OBWriteDataInternationalStandingOrderResponse3
    public var links: Links
    public var meta: Meta

    public init(data: OBWriteDataInternationalStandingOrderResponse3, links: Links, meta: Meta) {
        self.data = data
        self.links = links
        self.meta = meta
    }

    public enum CodingKeys: String, CodingKey { 
        case data = "Data"
        case links = "Links"
        case meta = "Meta"
    }


}

