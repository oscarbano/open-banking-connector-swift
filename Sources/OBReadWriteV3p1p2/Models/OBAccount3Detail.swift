//
// OBAccount3Detail.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Unambiguous identification of the account to which credit and debit entries are made. */

public struct OBAccount3Detail: Codable {

    public var accountId: AccountId
    public var currency: ActiveOrHistoricCurrencyCode0
    public var accountType: OBExternalAccountType1Code
    public var accountSubType: OBExternalAccountSubType1Code
    public var _description: Description0?
    public var nickname: Nickname?
    public var account: [OBAccount3Account]
    public var servicer: OBBranchAndFinancialInstitutionIdentification50?

    public init(accountId: AccountId, currency: ActiveOrHistoricCurrencyCode0, accountType: OBExternalAccountType1Code, accountSubType: OBExternalAccountSubType1Code, _description: Description0?, nickname: Nickname?, account: [OBAccount3Account], servicer: OBBranchAndFinancialInstitutionIdentification50?) {
        self.accountId = accountId
        self.currency = currency
        self.accountType = accountType
        self.accountSubType = accountSubType
        self._description = _description
        self.nickname = nickname
        self.account = account
        self.servicer = servicer
    }

    public enum CodingKeys: String, CodingKey { 
        case accountId = "AccountId"
        case currency = "Currency"
        case accountType = "AccountType"
        case accountSubType = "AccountSubType"
        case _description = "Description"
        case nickname = "Nickname"
        case account = "Account"
        case servicer = "Servicer"
    }


}

