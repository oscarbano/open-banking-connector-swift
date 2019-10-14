//
// OBReadConsentResponse1Data.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct OBReadConsentResponse1Data: Codable {

    /** Unique identification as assigned to identify the account access consent resource. */
    public var consentId: String
    /** Date and time at which the resource was created. All dates in the JSON payloads are represented in ISO 8601 date-time format.  All date-time fields in responses must include the timezone. An example is below: 2017-04-05T10:43:07+00:00 */
    public var creationDateTime: Date
    public var status: OBExternalRequestStatus1Code
    /** Date and time at which the resource status was updated. All dates in the JSON payloads are represented in ISO 8601 date-time format.  All date-time fields in responses must include the timezone. An example is below: 2017-04-05T10:43:07+00:00 */
    public var statusUpdateDateTime: Date
    /** Specifies the Open Banking account access data types. This is a list of the data clusters being consented by the PSU, and requested for authorisation with the ASPSP. */
    public var permissions: [OBExternalPermissions1Code]
    /** Specified date and time the permissions will expire. If this is not populated, the permissions will be open ended. All dates in the JSON payloads are represented in ISO 8601 date-time format.  All date-time fields in responses must include the timezone. An example is below: 2017-04-05T10:43:07+00:00 */
    public var expirationDateTime: Date?
    /** Specified start date and time for the transaction query period. If this is not populated, the start date will be open ended, and data will be returned from the earliest available transaction. All dates in the JSON payloads are represented in ISO 8601 date-time format.  All date-time fields in responses must include the timezone. An example is below: 2017-04-05T10:43:07+00:00 */
    public var transactionFromDateTime: Date?
    /** Specified end date and time for the transaction query period. If this is not populated, the end date will be open ended, and data will be returned to the latest available transaction. All dates in the JSON payloads are represented in ISO 8601 date-time format.  All date-time fields in responses must include the timezone. An example is below: 2017-04-05T10:43:07+00:00 */
    public var transactionToDateTime: Date?

    public init(consentId: String, creationDateTime: Date, status: OBExternalRequestStatus1Code, statusUpdateDateTime: Date, permissions: [OBExternalPermissions1Code], expirationDateTime: Date?, transactionFromDateTime: Date?, transactionToDateTime: Date?) {
        self.consentId = consentId
        self.creationDateTime = creationDateTime
        self.status = status
        self.statusUpdateDateTime = statusUpdateDateTime
        self.permissions = permissions
        self.expirationDateTime = expirationDateTime
        self.transactionFromDateTime = transactionFromDateTime
        self.transactionToDateTime = transactionToDateTime
    }

    public enum CodingKeys: String, CodingKey { 
        case consentId = "ConsentId"
        case creationDateTime = "CreationDateTime"
        case status = "Status"
        case statusUpdateDateTime = "StatusUpdateDateTime"
        case permissions = "Permissions"
        case expirationDateTime = "ExpirationDateTime"
        case transactionFromDateTime = "TransactionFromDateTime"
        case transactionToDateTime = "TransactionToDateTime"
    }


}
