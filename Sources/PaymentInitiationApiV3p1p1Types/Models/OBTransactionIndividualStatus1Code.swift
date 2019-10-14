//
// OBTransactionIndividualStatus1Code.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Specifies the status of the payment information group. */
public enum OBTransactionIndividualStatus1Code: String, Codable {
    case acceptedSettlementCompleted = "AcceptedSettlementCompleted"
    case acceptedSettlementInProcess = "AcceptedSettlementInProcess"
    case pending = "Pending"
    case rejected = "Rejected"

}
