//
// Meta.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Meta Data relevant to the payload */

public struct Meta: Codable {

    public var totalPages: Int?
    public var firstAvailableDateTime: ISODateTime?
    public var lastAvailableDateTime: ISODateTime?

    public init(totalPages: Int?, firstAvailableDateTime: ISODateTime?, lastAvailableDateTime: ISODateTime?) {
        self.totalPages = totalPages
        self.firstAvailableDateTime = firstAvailableDateTime
        self.lastAvailableDateTime = lastAvailableDateTime
    }

    public enum CodingKeys: String, CodingKey { 
        case totalPages = "TotalPages"
        case firstAvailableDateTime = "FirstAvailableDateTime"
        case lastAvailableDateTime = "LastAvailableDateTime"
    }


}

