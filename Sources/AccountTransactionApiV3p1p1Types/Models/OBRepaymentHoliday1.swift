//
// OBRepaymentHoliday1.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details of capital repayment holiday if any */

public struct OBRepaymentHoliday1: Codable {

    /** The maximum length/duration of a Repayment Holiday */
    public var maxHolidayLength: Int?
    public var maxHolidayPeriod: OBPeriod1Code?
    /** Free text for adding details for repayment holiday */
    public var notes: [String]?

    public init(maxHolidayLength: Int?, maxHolidayPeriod: OBPeriod1Code?, notes: [String]?) {
        self.maxHolidayLength = maxHolidayLength
        self.maxHolidayPeriod = maxHolidayPeriod
        self.notes = notes
    }

    public enum CodingKeys: String, CodingKey { 
        case maxHolidayLength = "MaxHolidayLength"
        case maxHolidayPeriod = "MaxHolidayPeriod"
        case notes = "Notes"
    }


}

