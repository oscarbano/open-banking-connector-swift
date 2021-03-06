//
// OBReadProduct2DataOtherProductTypeLoanInterestLoanInterestTierBand.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Tier Band Details */

public struct OBReadProduct2DataOtherProductTypeLoanInterestLoanInterestTierBand: Codable {

    public enum MinTermPeriod: String, Codable { 
        case pact = "PACT"
        case pday = "PDAY"
        case phyr = "PHYR"
        case pmth = "PMTH"
        case pqtr = "PQTR"
        case pwek = "PWEK"
        case pyer = "PYER"
    }
    public enum MaxTermPeriod: String, Codable { 
        case pact = "PACT"
        case pday = "PDAY"
        case phyr = "PHYR"
        case pmth = "PMTH"
        case pqtr = "PQTR"
        case pwek = "PWEK"
        case pyer = "PYER"
    }
    public enum LoanProviderInterestRateType: String, Codable { 
        case inbb = "INBB"
        case infr = "INFR"
        case ingr = "INGR"
        case inlr = "INLR"
        case inne = "INNE"
        case inot = "INOT"
    }
    /** Unique and unambiguous identification of a  Tier Band for a SME Loan. */
    public var identification: String?
    /** Minimum loan value for which the loan interest tier applies. */
    public var tierValueMinimum: String
    /** Maximum loan value for which the loan interest tier applies. */
    public var tierValueMaximum: String?
    /** Minimum loan term for which the loan interest tier applies. */
    public var tierValueMinTerm: Int
    /** The unit of period (days, weeks, months etc.) of the Minimum Term */
    public var minTermPeriod: MinTermPeriod
    /** Maximum loan term for which the loan interest tier applies. */
    public var tierValueMaxTerm: Int?
    /** The unit of period (days, weeks, months etc.) of the Maximum Term */
    public var maxTermPeriod: MaxTermPeriod?
    public var fixedVariableInterestRateType: OBInterestFixedVariableType1Code
    /** The annual equivalent rate (AER) is interest that is calculated under the assumption that any interest paid is combined with the original balance and the next interest payment will be based on the slightly higher account balance. Overall, this means that interest can be compounded several times in a year depending on the number of times that interest payments are made.  For SME Loan, this APR is the representative APR which includes any account fees. */
    public var repAPR: String
    /** Interest rate types, other than APR, which financial institutions may use to describe the annual interest rate payable for the SME Loan. */
    public var loanProviderInterestRateType: LoanProviderInterestRateType?
    /** Loan provider Interest for the SME Loan product */
    public var loanProviderInterestRate: String?
    public var notes: [String]?
    public var otherLoanProviderInterestRateType: OBReadProduct2DataOtherProductTypeLoanInterestOtherLoanProviderInterestRateType?
    public var loanInterestFeesCharges: [OBReadProduct2DataOtherProductTypeLoanInterestLoanInterestFeesCharges]?

    public init(identification: String?, tierValueMinimum: String, tierValueMaximum: String?, tierValueMinTerm: Int, minTermPeriod: MinTermPeriod, tierValueMaxTerm: Int?, maxTermPeriod: MaxTermPeriod?, fixedVariableInterestRateType: OBInterestFixedVariableType1Code, repAPR: String, loanProviderInterestRateType: LoanProviderInterestRateType?, loanProviderInterestRate: String?, notes: [String]?, otherLoanProviderInterestRateType: OBReadProduct2DataOtherProductTypeLoanInterestOtherLoanProviderInterestRateType?, loanInterestFeesCharges: [OBReadProduct2DataOtherProductTypeLoanInterestLoanInterestFeesCharges]?) {
        self.identification = identification
        self.tierValueMinimum = tierValueMinimum
        self.tierValueMaximum = tierValueMaximum
        self.tierValueMinTerm = tierValueMinTerm
        self.minTermPeriod = minTermPeriod
        self.tierValueMaxTerm = tierValueMaxTerm
        self.maxTermPeriod = maxTermPeriod
        self.fixedVariableInterestRateType = fixedVariableInterestRateType
        self.repAPR = repAPR
        self.loanProviderInterestRateType = loanProviderInterestRateType
        self.loanProviderInterestRate = loanProviderInterestRate
        self.notes = notes
        self.otherLoanProviderInterestRateType = otherLoanProviderInterestRateType
        self.loanInterestFeesCharges = loanInterestFeesCharges
    }

    public enum CodingKeys: String, CodingKey { 
        case identification = "Identification"
        case tierValueMinimum = "TierValueMinimum"
        case tierValueMaximum = "TierValueMaximum"
        case tierValueMinTerm = "TierValueMinTerm"
        case minTermPeriod = "MinTermPeriod"
        case tierValueMaxTerm = "TierValueMaxTerm"
        case maxTermPeriod = "MaxTermPeriod"
        case fixedVariableInterestRateType = "FixedVariableInterestRateType"
        case repAPR = "RepAPR"
        case loanProviderInterestRateType = "LoanProviderInterestRateType"
        case loanProviderInterestRate = "LoanProviderInterestRate"
        case notes = "Notes"
        case otherLoanProviderInterestRateType = "OtherLoanProviderInterestRateType"
        case loanInterestFeesCharges = "LoanInterestFeesCharges"
    }


}

