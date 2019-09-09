//
// OBReadProduct2DataOtherProductTypeCreditInterestTierBandSet.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The group of tiers or bands for which credit interest can be applied. */

public struct OBReadProduct2DataOtherProductTypeCreditInterestTierBandSet: Codable {

    public enum TierBandMethod: String, Codable { 
        case inba = "INBA"
        case inti = "INTI"
        case inwh = "INWH"
    }
    public enum Destination: String, Codable { 
        case inot = "INOT"
        case inpa = "INPA"
        case insc = "INSC"
    }
    /** The methodology of how credit interest is paid/applied. It can be:- 1. Banded Interest rates are banded. i.e. Increasing rate on whole balance as balance increases. 2. Tiered Interest rates are tiered. i.e. increasing rate for each tier as balance increases, but interest paid on tier fixed for that tier and not on whole balance. 3. Whole The same interest rate is applied irrespective of the product holder&#39;s account balance */
    public var tierBandMethod: TierBandMethod
    public var calculationMethod: OBInterestCalculationMethod1Code?
    /** Describes whether accrued interest is payable only to the BCA or to another bank account */
    public var destination: Destination
    public var notes: [String]?
    public var otherCalculationMethod: OBOtherCodeType10?
    public var otherDestination: OBOtherCodeType10?
    public var tierBand: [OBReadProduct2DataOtherProductTypeCreditInterestTierBand]

    public init(tierBandMethod: TierBandMethod, calculationMethod: OBInterestCalculationMethod1Code?, destination: Destination, notes: [String]?, otherCalculationMethod: OBOtherCodeType10?, otherDestination: OBOtherCodeType10?, tierBand: [OBReadProduct2DataOtherProductTypeCreditInterestTierBand]) {
        self.tierBandMethod = tierBandMethod
        self.calculationMethod = calculationMethod
        self.destination = destination
        self.notes = notes
        self.otherCalculationMethod = otherCalculationMethod
        self.otherDestination = otherDestination
        self.tierBand = tierBand
    }

    public enum CodingKeys: String, CodingKey { 
        case tierBandMethod = "TierBandMethod"
        case calculationMethod = "CalculationMethod"
        case destination = "Destination"
        case notes = "Notes"
        case otherCalculationMethod = "OtherCalculationMethod"
        case otherDestination = "OtherDestination"
        case tierBand = "TierBand"
    }


}

