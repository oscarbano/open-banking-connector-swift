//
// OBReadParty2Data.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct OBReadParty2Data: Codable {

    public var party: OBParty2?

    public init(party: OBParty2?) {
        self.party = party
    }

    public enum CodingKeys: String, CodingKey { 
        case party = "Party"
    }


}
