//
// OBReadParty1Data.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct OBReadParty1Data: Codable {

    public var party: OBReadParty1DataParty?

    public init(party: OBReadParty1DataParty?) {
        self.party = party
    }

    public enum CodingKeys: String, CodingKey { 
        case party = "Party"
    }


}

