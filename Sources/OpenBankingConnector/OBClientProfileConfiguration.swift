// ********************************************************************************
//
// This source file is part of the Open Banking Connector project
// ( https://github.com/finlabsuk/open-banking-connector ).
//
// Copyright (C) 2019 Finnovation Labs and the Open Banking Connector project authors.
//
// Licensed under Apache License v2.0. See LICENSE.txt for licence information.
// SPDX-License-Identifier: Apache-2.0
//
// ********************************************************************************

import OBATTypes

struct OBClientProfileConfiguration: Codable {
    
    // Mandatory parameters
    let softwareStatementProfileID: String
    let issuerURL: String
    let xFapiFinancialID: String
    let obAccountAndTransactionBaseURL: String
    let obAccountAndTransactionAPIVersion: OBAccountTransactionAPIVersion

    // Optional parameters
    let openIDConfigurationOverrides: OpenIDConfigurationOverrides?
    let httpClientMTLSConfigurationOverrides: HTTPClientMTLSConfigurationOverrides?
    let obClientRegistrationClaimsOverrides: OBClientRegistrationClaimsOverrides?
    let obClientRegistrationResponseOverrides: OBClientRegistrationResponseOverrides?
    let obAccountTransactionAPISettingsOverrides: OBAccountTransactionAPISettingsOverrides?

}
