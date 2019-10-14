//
// OBDomesticScheduled2.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The Initiation payload is sent by the initiating party to the ASPSP. It is used to request movement of funds from the debtor account to a creditor for a single scheduled domestic payment. */

public struct OBDomesticScheduled2: Codable {

    /** Unique identification as assigned by an instructing party for an instructed party to unambiguously identify the instruction. Usage: the  instruction identification is a point to point reference that can be used between the instructing party and the instructed party to refer to the individual instruction. It can be included in several messages related to the instruction. */
    public var instructionIdentification: String
    /** Unique identification assigned by the initiating party to unambiguously identify the transaction. This identification is passed on, unchanged, throughout the entire end-to-end chain. Usage: The end-to-end identification can be used for reconciliation or to link tasks relating to the transaction. It can be included in several messages related to the transaction. OB: The Faster Payments Scheme can only access 31 characters for the EndToEndIdentification field. */
    public var endToEndIdentification: String?
    public var localInstrument: OBExternalLocalInstrument1Code?
    /** Date at which the initiating party requests the clearing agent to process the payment.  Usage: This is the date on which the debtor&#39;s account is to be debited. All dates in the JSON payloads are represented in ISO 8601 date-time format.  All date-time fields in responses must include the timezone. An example is below: 2017-04-05T10:43:07+00:00 */
    public var requestedExecutionDateTime: Date
    public var instructedAmount: OBDomestic2InstructedAmount
    public var debtorAccount: OBCashAccountDebtor4?
    public var creditorAccount: OBCashAccountCreditor3
    public var creditorPostalAddress: OBPostalAddress6?
    public var remittanceInformation: OBRemittanceInformation1?
    public var supplementaryData: OBSupplementaryData1?

    public init(instructionIdentification: String, endToEndIdentification: String?, localInstrument: OBExternalLocalInstrument1Code?, requestedExecutionDateTime: Date, instructedAmount: OBDomestic2InstructedAmount, debtorAccount: OBCashAccountDebtor4?, creditorAccount: OBCashAccountCreditor3, creditorPostalAddress: OBPostalAddress6?, remittanceInformation: OBRemittanceInformation1?, supplementaryData: OBSupplementaryData1?) {
        self.instructionIdentification = instructionIdentification
        self.endToEndIdentification = endToEndIdentification
        self.localInstrument = localInstrument
        self.requestedExecutionDateTime = requestedExecutionDateTime
        self.instructedAmount = instructedAmount
        self.debtorAccount = debtorAccount
        self.creditorAccount = creditorAccount
        self.creditorPostalAddress = creditorPostalAddress
        self.remittanceInformation = remittanceInformation
        self.supplementaryData = supplementaryData
    }

    public enum CodingKeys: String, CodingKey { 
        case instructionIdentification = "InstructionIdentification"
        case endToEndIdentification = "EndToEndIdentification"
        case localInstrument = "LocalInstrument"
        case requestedExecutionDateTime = "RequestedExecutionDateTime"
        case instructedAmount = "InstructedAmount"
        case debtorAccount = "DebtorAccount"
        case creditorAccount = "CreditorAccount"
        case creditorPostalAddress = "CreditorPostalAddress"
        case remittanceInformation = "RemittanceInformation"
        case supplementaryData = "SupplementaryData"
    }


}

