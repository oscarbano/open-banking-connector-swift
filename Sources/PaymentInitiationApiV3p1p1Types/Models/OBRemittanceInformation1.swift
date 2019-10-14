//
// OBRemittanceInformation1.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Information supplied to enable the matching of an entry with the items that the transfer is intended to settle, such as commercial invoices in an accounts&#39; receivable system. */

public struct OBRemittanceInformation1: Codable {

    /** Information supplied to enable the matching/reconciliation of an entry with the items that the payment is intended to settle, such as commercial invoices in an accounts&#39; receivable system, in an unstructured form. */
    public var unstructured: String?
    /** Unique reference, as assigned by the creditor, to unambiguously refer to the payment transaction. Usage: If available, the initiating party should provide this reference in the structured remittance information, to enable reconciliation by the creditor upon receipt of the amount of money. If the business context requires the use of a creditor reference or a payment remit identification, and only one identifier can be passed through the end-to-end chain, the creditor&#39;s reference or payment remittance identification should be quoted in the end-to-end transaction identification. OB: The Faster Payments Scheme can only accept 18 characters for the ReferenceInformation field - which is where this ISO field will be mapped. */
    public var reference: String?

    public init(unstructured: String?, reference: String?) {
        self.unstructured = unstructured
        self.reference = reference
    }

    public enum CodingKeys: String, CodingKey { 
        case unstructured = "Unstructured"
        case reference = "Reference"
    }


}

