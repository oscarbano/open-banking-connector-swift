//
// OBBeneficiary2Basic.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct OBBeneficiary2Basic: Codable {

    public var accountId: AccountId?
    /** A unique and immutable identifier used to identify the beneficiary resource. This identifier has no meaning to the account owner. */
    public var beneficiaryId: String?
    /** Unique reference, as assigned by the creditor, to unambiguously refer to the payment transaction. Usage: If available, the initiating party should provide this reference in the structured remittance information, to enable reconciliation by the creditor upon receipt of the amount of money. If the business context requires the use of a creditor reference or a payment remit identification, and only one identifier can be passed through the end-to-end chain, the creditor&#39;s reference or payment remittance identification should be quoted in the end-to-end transaction identification. */
    public var reference: String?

    public init(accountId: AccountId?, beneficiaryId: String?, reference: String?) {
        self.accountId = accountId
        self.beneficiaryId = beneficiaryId
        self.reference = reference
    }

    public enum CodingKeys: String, CodingKey { 
        case accountId = "AccountId"
        case beneficiaryId = "BeneficiaryId"
        case reference = "Reference"
    }


}

