//
// OBAccount3Basic.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Unambiguous identification of the account to which credit and debit entries are made. */

public struct OBAccount3Basic: Codable {

    public var accountId: AccountId
    /** Identification of the currency in which the account is held.  Usage: Currency should only be used in case one and the same account number covers several currencies and the initiating party needs to identify which currency needs to be used for settlement on the account. */
    public var currency: String
    public var accountType: OBExternalAccountType1Code
    public var accountSubType: OBExternalAccountSubType1Code
    /** Specifies the description of the account type. */
    public var _description: String?
    /** The nickname of the account, assigned by the account owner in order to provide an additional means of identification of the account. */
    public var nickname: String?

    public init(accountId: AccountId, currency: String, accountType: OBExternalAccountType1Code, accountSubType: OBExternalAccountSubType1Code, _description: String?, nickname: String?) {
        self.accountId = accountId
        self.currency = currency
        self.accountType = accountType
        self.accountSubType = accountSubType
        self._description = _description
        self.nickname = nickname
    }

    public enum CodingKeys: String, CodingKey { 
        case accountId = "AccountId"
        case currency = "Currency"
        case accountType = "AccountType"
        case accountSubType = "AccountSubType"
        case _description = "Description"
        case nickname = "Nickname"
    }


}

