//
// OBReadOffer1Data.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct OBReadOffer1Data: Codable {

    public var offer: [OBOffer1]?

    public init(offer: [OBOffer1]?) {
        self.offer = offer
    }

    public enum CodingKeys: String, CodingKey { 
        case offer = "Offer"
    }


}

