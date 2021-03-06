//
// OBPartyRelationships1Account.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Relationship to the Account resource. */

public struct OBPartyRelationships1Account: Codable {

    /** Absolute URI to the related resource. */
    public var related: String
    /** Unique identification as assigned by the ASPSP to uniquely identify the related resource. */
    public var _id: String

    public init(related: String, _id: String) {
        self.related = related
        self._id = _id
    }

    public enum CodingKeys: String, CodingKey { 
        case related = "Related"
        case _id = "Id"
    }


}

