//
// OBStatement2Basic.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Provides further details on a statement resource. */

public struct OBStatement2Basic: Codable {

    public var accountId: AccountId
    /** Unique identifier for the statement resource within an servicing institution. This identifier is both unique and immutable. */
    public var statementId: String?
    /** Unique reference for the statement. This reference may be optionally populated if available. */
    public var statementReference: String?
    public var type: OBExternalStatementType1Code
    /** Date and time at which the statement period starts. All dates in the JSON payloads are represented in ISO 8601 date-time format.  All date-time fields in responses must include the timezone. An example is below: 2017-04-05T10:43:07+00:00 */
    public var startDateTime: Date
    /** Date and time at which the statement period ends. All dates in the JSON payloads are represented in ISO 8601 date-time format.  All date-time fields in responses must include the timezone. An example is below: 2017-04-05T10:43:07+00:00 */
    public var endDateTime: Date
    /** Date and time at which the resource was created. All dates in the JSON payloads are represented in ISO 8601 date-time format.  All date-time fields in responses must include the timezone. An example is below: 2017-04-05T10:43:07+00:00 */
    public var creationDateTime: Date
    /** Other descriptions that may be available for the statement resource. */
    public var statementDescription: [String]?
    /** Set of elements used to provide details of a benefit or reward amount for the statement resource. */
    public var statementBenefit: [OBStatementBenefit1]?
    /** Set of elements used to provide details of a fee for the statement resource. */
    public var statementFee: [OBStatementFee2]?
    /** Set of elements used to provide details of a generic interest amount related to the statement resource. */
    public var statementInterest: [OBStatementInterest2]?
    /** Set of elements used to provide details of a generic date time for the statement resource. */
    public var statementDateTime: [OBStatementDateTime1]?
    /** Set of elements used to provide details of a generic rate related to the statement resource. */
    public var statementRate: [OBStatementRate1]?
    /** Set of elements used to provide details of a generic number value related to the statement resource. */
    public var statementValue: [OBStatementValue1]?

    public init(accountId: AccountId, statementId: String?, statementReference: String?, type: OBExternalStatementType1Code, startDateTime: Date, endDateTime: Date, creationDateTime: Date, statementDescription: [String]?, statementBenefit: [OBStatementBenefit1]?, statementFee: [OBStatementFee2]?, statementInterest: [OBStatementInterest2]?, statementDateTime: [OBStatementDateTime1]?, statementRate: [OBStatementRate1]?, statementValue: [OBStatementValue1]?) {
        self.accountId = accountId
        self.statementId = statementId
        self.statementReference = statementReference
        self.type = type
        self.startDateTime = startDateTime
        self.endDateTime = endDateTime
        self.creationDateTime = creationDateTime
        self.statementDescription = statementDescription
        self.statementBenefit = statementBenefit
        self.statementFee = statementFee
        self.statementInterest = statementInterest
        self.statementDateTime = statementDateTime
        self.statementRate = statementRate
        self.statementValue = statementValue
    }

    public enum CodingKeys: String, CodingKey { 
        case accountId = "AccountId"
        case statementId = "StatementId"
        case statementReference = "StatementReference"
        case type = "Type"
        case startDateTime = "StartDateTime"
        case endDateTime = "EndDateTime"
        case creationDateTime = "CreationDateTime"
        case statementDescription = "StatementDescription"
        case statementBenefit = "StatementBenefit"
        case statementFee = "StatementFee"
        case statementInterest = "StatementInterest"
        case statementDateTime = "StatementDateTime"
        case statementRate = "StatementRate"
        case statementValue = "StatementValue"
    }


}

