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

import OBATProtocols

// Transaction conformances

public typealias OBReadTransactionAlias = OBReadTransaction5
public typealias OBReadTransactionDataAlias = OBReadDataTransaction5
public typealias OBTransactionAlias = OBTransaction5
public typealias OBTransactionBalanceAlias = OBTransactionCashBalance
public typealias OBCreditDebitCode1Alias = OBCreditDebitCode1
public typealias OBCreditDebitCode2Alias = OBCreditDebitCode2

extension OBReadTransactionAlias: OBATReadTransactionProtocol {
    public typealias OBAIReadResourceDataType = OBReadDataTransaction5 }
extension OBReadTransactionDataAlias: OBAIReadTransactionDataProtocol {
    public typealias OBAIResourceType = OBTransaction5
}
extension OBCreditDebitCode1Alias: RawRepresentableWithStringRawValue {}
extension OBCreditDebitCode2Alias: RawRepresentableWithStringRawValue {}
extension OBTransactionBalanceAlias: OBTransactionCashBalanceProtocol {
    public var nestedAmount: String { return amount.amount }
}
extension OBTransactionAlias: OBAITransactionProtocol {
    public var nestedAmount: String { return amount.amount }
}

//public let OBATV3p1p2ReadResourceTypes = OBATReadResourceTypes(
//    obATReadTransactionType: OBReadTransactionAlias.self
//)

public class OBATV3p1p2ReadResourceTypes: OBATReadResourceTypesProtocol {
    public typealias OBATReadTransactionType = OBReadTransactionAlias
}
