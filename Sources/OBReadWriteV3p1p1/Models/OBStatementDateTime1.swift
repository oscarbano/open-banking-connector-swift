//
// OBStatementDateTime1.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Set of elements used to provide details of a generic date time for the statement resource. */

public struct OBStatementDateTime1: Codable {

    /** Date and time associated with the date time type. All dates in the JSON payloads are represented in ISO 8601 date-time format.  All date-time fields in responses must include the timezone. An example is below: 2017-04-05T10:43:07+00:00 */
    public var dateTime: Date
    public var type: OBExternalStatementDateTimeType1Code

    public init(dateTime: Date, type: OBExternalStatementDateTimeType1Code) {
        self.dateTime = dateTime
        self.type = type
    }

    public enum CodingKeys: String, CodingKey { 
        case dateTime = "DateTime"
        case type = "Type"
    }


}

