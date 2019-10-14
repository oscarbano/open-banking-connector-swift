//
// OBWriteDataDomesticScheduledResponse2.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct OBWriteDataDomesticScheduledResponse2: Codable {

    /** OB: Unique identification as assigned by the ASPSP to uniquely identify the domestic schedule payment resource. */
    public var domesticScheduledPaymentId: String
    /** OB: Unique identification as assigned by the ASPSP to uniquely identify the consent resource. */
    public var consentId: String
    /** Date and time at which the message was created. All dates in the JSON payloads are represented in ISO 8601 date-time format.  All date-time fields in responses must include the timezone. An example is below: 2017-04-05T10:43:07+00:00 */
    public var creationDateTime: Date
    public var status: OBExternalStatus1Code
    /** Date and time at which the resource status was updated. All dates in the JSON payloads are represented in ISO 8601 date-time format.  All date-time fields in responses must include the timezone. An example is below: 2017-04-05T10:43:07+00:00 */
    public var statusUpdateDateTime: Date
    /** Expected execution date and time for the payment resource. All dates in the JSON payloads are represented in ISO 8601 date-time format.  All date-time fields in responses must include the timezone. An example is below: 2017-04-05T10:43:07+00:00 */
    public var expectedExecutionDateTime: Date?
    /** Expected settlement date and time for the payment resource. All dates in the JSON payloads are represented in ISO 8601 date-time format.  All date-time fields in responses must include the timezone. An example is below: 2017-04-05T10:43:07+00:00 */
    public var expectedSettlementDateTime: Date?
    /** Set of elements used to provide details of a charge for the payment initiation. */
    public var charges: [OBCharge2]?
    public var initiation: OBDomesticScheduled2
    public var multiAuthorisation: OBMultiAuthorisation1?

    public init(domesticScheduledPaymentId: String, consentId: String, creationDateTime: Date, status: OBExternalStatus1Code, statusUpdateDateTime: Date, expectedExecutionDateTime: Date?, expectedSettlementDateTime: Date?, charges: [OBCharge2]?, initiation: OBDomesticScheduled2, multiAuthorisation: OBMultiAuthorisation1?) {
        self.domesticScheduledPaymentId = domesticScheduledPaymentId
        self.consentId = consentId
        self.creationDateTime = creationDateTime
        self.status = status
        self.statusUpdateDateTime = statusUpdateDateTime
        self.expectedExecutionDateTime = expectedExecutionDateTime
        self.expectedSettlementDateTime = expectedSettlementDateTime
        self.charges = charges
        self.initiation = initiation
        self.multiAuthorisation = multiAuthorisation
    }

    public enum CodingKeys: String, CodingKey { 
        case domesticScheduledPaymentId = "DomesticScheduledPaymentId"
        case consentId = "ConsentId"
        case creationDateTime = "CreationDateTime"
        case status = "Status"
        case statusUpdateDateTime = "StatusUpdateDateTime"
        case expectedExecutionDateTime = "ExpectedExecutionDateTime"
        case expectedSettlementDateTime = "ExpectedSettlementDateTime"
        case charges = "Charges"
        case initiation = "Initiation"
        case multiAuthorisation = "MultiAuthorisation"
    }


}

