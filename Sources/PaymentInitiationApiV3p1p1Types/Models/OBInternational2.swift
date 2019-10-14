//
// OBInternational2.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The Initiation payload is sent by the initiating party to the ASPSP. It is used to request movement of funds from the debtor account to a creditor for a single international payment. */

public struct OBInternational2: Codable {

    /** Unique identification as assigned by an instructing party for an instructed party to unambiguously identify the instruction. Usage: the  instruction identification is a point to point reference that can be used between the instructing party and the instructed party to refer to the individual instruction. It can be included in several messages related to the instruction. */
    public var instructionIdentification: String
    /** Unique identification assigned by the initiating party to unambiguously identify the transaction. This identification is passed on, unchanged, throughout the entire end-to-end chain. Usage: The end-to-end identification can be used for reconciliation or to link tasks relating to the transaction. It can be included in several messages related to the transaction. OB: The Faster Payments Scheme can only access 31 characters for the EndToEndIdentification field. */
    public var endToEndIdentification: String
    public var localInstrument: OBExternalLocalInstrument1Code?
    public var instructionPriority: OBPriority2Code?
    public var purpose: OBExternalPurpose1Code1?
    public var chargeBearer: OBChargeBearerType1Code?
    /** Specifies the currency of the to be transferred amount, which is different from the currency of the debtor&#39;s account. */
    public var currencyOfTransfer: String
    public var instructedAmount: OBDomestic2InstructedAmount
    public var exchangeRateInformation: OBExchangeRate1?
    public var debtorAccount: OBCashAccountDebtor4?
    public var creditor: OBPartyIdentification43?
    public var creditorAgent: OBBranchAndFinancialInstitutionIdentification6?
    public var creditorAccount: OBCashAccountCreditor3
    public var remittanceInformation: OBRemittanceInformation1?
    public var supplementaryData: OBSupplementaryData1?

    public init(instructionIdentification: String, endToEndIdentification: String, localInstrument: OBExternalLocalInstrument1Code?, instructionPriority: OBPriority2Code?, purpose: OBExternalPurpose1Code1?, chargeBearer: OBChargeBearerType1Code?, currencyOfTransfer: String, instructedAmount: OBDomestic2InstructedAmount, exchangeRateInformation: OBExchangeRate1?, debtorAccount: OBCashAccountDebtor4?, creditor: OBPartyIdentification43?, creditorAgent: OBBranchAndFinancialInstitutionIdentification6?, creditorAccount: OBCashAccountCreditor3, remittanceInformation: OBRemittanceInformation1?, supplementaryData: OBSupplementaryData1?) {
        self.instructionIdentification = instructionIdentification
        self.endToEndIdentification = endToEndIdentification
        self.localInstrument = localInstrument
        self.instructionPriority = instructionPriority
        self.purpose = purpose
        self.chargeBearer = chargeBearer
        self.currencyOfTransfer = currencyOfTransfer
        self.instructedAmount = instructedAmount
        self.exchangeRateInformation = exchangeRateInformation
        self.debtorAccount = debtorAccount
        self.creditor = creditor
        self.creditorAgent = creditorAgent
        self.creditorAccount = creditorAccount
        self.remittanceInformation = remittanceInformation
        self.supplementaryData = supplementaryData
    }

    public enum CodingKeys: String, CodingKey { 
        case instructionIdentification = "InstructionIdentification"
        case endToEndIdentification = "EndToEndIdentification"
        case localInstrument = "LocalInstrument"
        case instructionPriority = "InstructionPriority"
        case purpose = "Purpose"
        case chargeBearer = "ChargeBearer"
        case currencyOfTransfer = "CurrencyOfTransfer"
        case instructedAmount = "InstructedAmount"
        case exchangeRateInformation = "ExchangeRateInformation"
        case debtorAccount = "DebtorAccount"
        case creditor = "Creditor"
        case creditorAgent = "CreditorAgent"
        case creditorAccount = "CreditorAccount"
        case remittanceInformation = "RemittanceInformation"
        case supplementaryData = "SupplementaryData"
    }


}
