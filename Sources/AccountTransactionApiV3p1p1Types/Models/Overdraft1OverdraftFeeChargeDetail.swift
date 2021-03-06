//
// Overdraft1OverdraftFeeChargeDetail.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details about the fees/charges */

public struct Overdraft1OverdraftFeeChargeDetail: Codable {

    public enum FeeType: String, Codable { 
        case arrangedOverdraft = "ArrangedOverdraft"
        case emergencyBorrowing = "EmergencyBorrowing"
        case borrowingItem = "BorrowingItem"
        case overdraftRenewal = "OverdraftRenewal"
        case annualReview = "AnnualReview"
        case overdraftSetup = "OverdraftSetup"
        case surcharge = "Surcharge"
        case tempOverdraft = "TempOverdraft"
        case unauthorisedBorrowing = "UnauthorisedBorrowing"
        case unauthorisedPaidTrans = "UnauthorisedPaidTrans"
        case other = "Other"
        case unauthorisedUnpaidTrans = "UnauthorisedUnpaidTrans"
    }
    public enum FeeRateType: String, Codable { 
        case linkedBaseRate = "LinkedBaseRate"
        case gross = "Gross"
        case net = "Net"
        case other = "Other"
    }
    public enum ApplicationFrequency: String, Codable { 
        case accountClosing = "AccountClosing"
        case accountOpening = "AccountOpening"
        case academicTerm = "AcademicTerm"
        case chargingPeriod = "ChargingPeriod"
        case daily = "Daily"
        case perItem = "PerItem"
        case monthly = "Monthly"
        case onAccountAnniversary = "OnAccountAnniversary"
        case other = "Other"
        case perHour = "PerHour"
        case perOccurrence = "PerOccurrence"
        case perSheet = "PerSheet"
        case perTransaction = "PerTransaction"
        case perTransactionAmount = "PerTransactionAmount"
        case perTransactionPercentage = "PerTransactionPercentage"
        case quarterly = "Quarterly"
        case sixMonthly = "SixMonthly"
        case statementMonthly = "StatementMonthly"
        case weekly = "Weekly"
        case yearly = "Yearly"
    }
    public enum CalculationFrequency: String, Codable { 
        case accountClosing = "AccountClosing"
        case accountOpening = "AccountOpening"
        case academicTerm = "AcademicTerm"
        case chargingPeriod = "ChargingPeriod"
        case daily = "Daily"
        case perItem = "PerItem"
        case monthly = "Monthly"
        case onAccountAnniversary = "OnAccountAnniversary"
        case other = "Other"
        case perHour = "PerHour"
        case perOccurrence = "PerOccurrence"
        case perSheet = "PerSheet"
        case perTransaction = "PerTransaction"
        case perTransactionAmount = "PerTransactionAmount"
        case perTransactionPercentage = "PerTransactionPercentage"
        case quarterly = "Quarterly"
        case sixMonthly = "SixMonthly"
        case statementMonthly = "StatementMonthly"
        case weekly = "Weekly"
        case yearly = "Yearly"
    }
    /** Overdraft fee type */
    public var feeType: FeeType
    /** Specifies for the overdraft control feature/benefit */
    public var overdraftControlIndicator: Bool?
    /** Every additional tranche of an overdraft balance to which an overdraft fee is applied */
    public var incrementalBorrowingAmount: String?
    /** Amount charged for an overdraft fee/charge (where it is charged in terms of an amount rather than a rate) */
    public var feeAmount: String?
    /** Rate charged for overdraft fee/charge (where it is charged in terms of a rate rather than an amount) */
    public var feeRate: String?
    /** Rate type for overdraft fee/charge (where it is charged in terms of a rate rather than an amount) */
    public var feeRateType: FeeRateType?
    /** Frequency at which the overdraft charge is applied to the account */
    public var applicationFrequency: ApplicationFrequency
    /** How often is the overdraft fee/charge calculated for the account. */
    public var calculationFrequency: CalculationFrequency?
    /** Free text for capturing any other info related to Overdraft Fees Charge Details */
    public var notes: [String]?
    public var otherFeeType: OtherFeeType?
    public var otherFeeRateType: OtherFeeRateType?
    public var otherApplicationFrequency: OtherApplicationFrequency?
    public var otherCalculationFrequency: OtherCalculationFrequency?
    public var overdraftFeeChargeCap: Overdraft1OverdraftFeeChargeCap?

    public init(feeType: FeeType, overdraftControlIndicator: Bool?, incrementalBorrowingAmount: String?, feeAmount: String?, feeRate: String?, feeRateType: FeeRateType?, applicationFrequency: ApplicationFrequency, calculationFrequency: CalculationFrequency?, notes: [String]?, otherFeeType: OtherFeeType?, otherFeeRateType: OtherFeeRateType?, otherApplicationFrequency: OtherApplicationFrequency?, otherCalculationFrequency: OtherCalculationFrequency?, overdraftFeeChargeCap: Overdraft1OverdraftFeeChargeCap?) {
        self.feeType = feeType
        self.overdraftControlIndicator = overdraftControlIndicator
        self.incrementalBorrowingAmount = incrementalBorrowingAmount
        self.feeAmount = feeAmount
        self.feeRate = feeRate
        self.feeRateType = feeRateType
        self.applicationFrequency = applicationFrequency
        self.calculationFrequency = calculationFrequency
        self.notes = notes
        self.otherFeeType = otherFeeType
        self.otherFeeRateType = otherFeeRateType
        self.otherApplicationFrequency = otherApplicationFrequency
        self.otherCalculationFrequency = otherCalculationFrequency
        self.overdraftFeeChargeCap = overdraftFeeChargeCap
    }

    public enum CodingKeys: String, CodingKey { 
        case feeType = "FeeType"
        case overdraftControlIndicator = "OverdraftControlIndicator"
        case incrementalBorrowingAmount = "IncrementalBorrowingAmount"
        case feeAmount = "FeeAmount"
        case feeRate = "FeeRate"
        case feeRateType = "FeeRateType"
        case applicationFrequency = "ApplicationFrequency"
        case calculationFrequency = "CalculationFrequency"
        case notes = "Notes"
        case otherFeeType = "OtherFeeType"
        case otherFeeRateType = "OtherFeeRateType"
        case otherApplicationFrequency = "OtherApplicationFrequency"
        case otherCalculationFrequency = "OtherCalculationFrequency"
        case overdraftFeeChargeCap = "OverdraftFeeChargeCap"
    }


}

