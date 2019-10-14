//
// OBExternalStatus2Code.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Specifies the status of the authorisation flow in code form. */
public enum OBExternalStatus2Code: String, Codable {
    case authorised = "Authorised"
    case awaitingFurtherAuthorisation = "AwaitingFurtherAuthorisation"
    case rejected = "Rejected"

}
