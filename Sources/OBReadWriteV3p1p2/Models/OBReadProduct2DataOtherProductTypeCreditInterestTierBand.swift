//
// OBReadProduct2DataOtherProductTypeCreditInterestTierBand.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Tier Band Details */

public struct OBReadProduct2DataOtherProductTypeCreditInterestTierBand: Codable {

    public enum CalculationFrequency: String, Codable { 
        case fqat = "FQAT"
        case fqdy = "FQDY"
        case fqhy = "FQHY"
        case fqmy = "FQMY"
        case fqot = "FQOT"
        case fqqy = "FQQY"
        case fqsd = "FQSD"
        case fqwy = "FQWY"
        case fqyy = "FQYY"
    }
    public enum ApplicationFrequency: String, Codable { 
        case fqat = "FQAT"
        case fqdy = "FQDY"
        case fqhy = "FQHY"
        case fqmy = "FQMY"
        case fqot = "FQOT"
        case fqqy = "FQQY"
        case fqsd = "FQSD"
        case fqwy = "FQWY"
        case fqyy = "FQYY"
    }
    public enum DepositInterestAppliedCoverage: String, Codable { 
        case inba = "INBA"
        case inti = "INTI"
        case inwh = "INWH"
    }
    public enum BankInterestRateType: String, Codable { 
        case inbb = "INBB"
        case infr = "INFR"
        case ingr = "INGR"
        case inlr = "INLR"
        case inne = "INNE"
        case inot = "INOT"
    }
    /** Unique and unambiguous identification of a  Tier Band for the Product. */
    public var identification: String?
    /** Minimum deposit value for which the credit interest tier applies. */
    public var tierValueMinimum: String
    /** Maximum deposit value for which the credit interest tier applies. */
    public var tierValueMaximum: String?
    /** How often is credit interest calculated for the account. */
    public var calculationFrequency: CalculationFrequency?
    /** How often is interest applied to the Product for this tier/band i.e. how often the financial institution pays accumulated interest to the customer&#39;s account. */
    public var applicationFrequency: ApplicationFrequency
    /** Amount on which Interest applied. */
    public var depositInterestAppliedCoverage: DepositInterestAppliedCoverage?
    public var fixedVariableInterestRateType: OBInterestFixedVariableType1Code
    /** The annual equivalent rate (AER) is interest that is calculated under the assumption that any interest paid is combined with the original balance and the next interest payment will be based on the slightly higher account balance. Overall, this means that interest can be compounded several times in a year depending on the number of times that interest payments are made.  Read more: Annual Equivalent Rate (AER) http://www.investopedia.com/terms/a/aer.asp#ixzz4gfR7IO1A */
    public var AER: String
    /** Interest rate types, other than AER, which financial institutions may use to describe the annual interest rate payable to the account holder&#39;s account. */
    public var bankInterestRateType: BankInterestRateType?
    /** Bank Interest for the product */
    public var bankInterestRate: String?
    public var notes: [String]?
    public var otherBankInterestType: OBReadProduct2DataOtherProductTypeCreditInterestOtherBankInterestType?
    public var otherApplicationFrequency: OBOtherCodeType11?
    public var otherCalculationFrequency: OBOtherCodeType12?

    public init(identification: String?, tierValueMinimum: String, tierValueMaximum: String?, calculationFrequency: CalculationFrequency?, applicationFrequency: ApplicationFrequency, depositInterestAppliedCoverage: DepositInterestAppliedCoverage?, fixedVariableInterestRateType: OBInterestFixedVariableType1Code, AER: String, bankInterestRateType: BankInterestRateType?, bankInterestRate: String?, notes: [String]?, otherBankInterestType: OBReadProduct2DataOtherProductTypeCreditInterestOtherBankInterestType?, otherApplicationFrequency: OBOtherCodeType11?, otherCalculationFrequency: OBOtherCodeType12?) {
        self.identification = identification
        self.tierValueMinimum = tierValueMinimum
        self.tierValueMaximum = tierValueMaximum
        self.calculationFrequency = calculationFrequency
        self.applicationFrequency = applicationFrequency
        self.depositInterestAppliedCoverage = depositInterestAppliedCoverage
        self.fixedVariableInterestRateType = fixedVariableInterestRateType
        self.AER = AER
        self.bankInterestRateType = bankInterestRateType
        self.bankInterestRate = bankInterestRate
        self.notes = notes
        self.otherBankInterestType = otherBankInterestType
        self.otherApplicationFrequency = otherApplicationFrequency
        self.otherCalculationFrequency = otherCalculationFrequency
    }

    public enum CodingKeys: String, CodingKey { 
        case identification = "Identification"
        case tierValueMinimum = "TierValueMinimum"
        case tierValueMaximum = "TierValueMaximum"
        case calculationFrequency = "CalculationFrequency"
        case applicationFrequency = "ApplicationFrequency"
        case depositInterestAppliedCoverage = "DepositInterestAppliedCoverage"
        case fixedVariableInterestRateType = "FixedVariableInterestRateType"
        case AER
        case bankInterestRateType = "BankInterestRateType"
        case bankInterestRate = "BankInterestRate"
        case notes = "Notes"
        case otherBankInterestType = "OtherBankInterestType"
        case otherApplicationFrequency = "OtherApplicationFrequency"
        case otherCalculationFrequency = "OtherCalculationFrequency"
    }


}

