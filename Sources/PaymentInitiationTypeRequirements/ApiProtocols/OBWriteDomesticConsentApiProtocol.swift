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

import Foundation
import SwiftJWT

public protocol OBWritePaymentConsentApiProtocol: Claims {
    associatedtype OBWritePaymentConsentData
    associatedtype OBRiskApi: OBRiskApiProtocol
    associatedtype ResponseApi: OBWritePaymentConsentResponseApiProtocol
    init(
        data: OBWritePaymentConsentData,
        risk: OBRiskApi
    )
}

public protocol OBWriteDomesticConsentApiProtocol: OBWritePaymentConsentApiProtocol where OBWritePaymentConsentData: OBWriteDomesticConsentDataProtocol { }

public protocol OBWriteDomesticConsentDataProtocol {
    associatedtype OBWriteDomesticDataInitiationType: OBWriteDomesticDataInitiationProtocol
    associatedtype OBWriteDomesticConsentDataAuthorisationType: OBWriteDomesticConsentDataAuthorisationProtocol
    associatedtype OBWriteDomesticConsentDataSCASupportDataType
    var initiation: OBWriteDomesticDataInitiationType { get }
    var authorisation: OBWriteDomesticConsentDataAuthorisationType? { get }
    var sCASupportData: OBWriteDomesticConsentDataSCASupportDataType? { get }
    init(
        initiation: OBWriteDomesticDataInitiationType,
        authorisation: OBWriteDomesticConsentDataAuthorisationType?,
        sCASupportData: OBWriteDomesticConsentDataSCASupportDataType?
    )
}

public protocol OBWriteDomesticDataInitiationProtocol {
    associatedtype OBWriteDomesticDataInitiationInstructedAmountType: OBWriteDomesticDataInitiationInstructedAmountProtocol
    associatedtype OBWriteDomesticDataInitiationDebtorAccountType: OBWriteDomesticDataInitiationDebtorAccountProtocol
    associatedtype OBWriteDomesticDataInitiationCreditorAccountType: OBWriteDomesticDataInitiationCreditorAccountProtocol
    associatedtype OBWriteDomesticDataInitiationRemittanceInformationType: OBWriteDomesticDataInitiationRemittanceInformationProtocol
    var instructionIdentification: String { get }
    var endToEndIdentification: String { get }
    var localInstrument: String? { get } // OBExternalLocalInstrument1Code?
    var instructedAmount: OBWriteDomesticDataInitiationInstructedAmountType { get }
    var debtorAccount: OBWriteDomesticDataInitiationDebtorAccountType? { get }
    var creditorAccount: OBWriteDomesticDataInitiationCreditorAccountType { get }
    //public var creditorPostalAddress: OBPostalAddress6?
    var remittanceInformation: OBWriteDomesticDataInitiationRemittanceInformationType? { get }
    //public var supplementaryData: OBSupplementaryData1?
    init(
        instructionIdentification: String,
        endToEndIdentification: String,
        localInstrument: String?, // OBExternalLocalInstrument1Code?,
        instructedAmount: OBWriteDomesticDataInitiationInstructedAmountType,
        debtorAccount: OBWriteDomesticDataInitiationDebtorAccountType?,
        creditorAccount: OBWriteDomesticDataInitiationCreditorAccountType,
        //creditorPostalAddress: OBPostalAddress6?,
        remittanceInformation: OBWriteDomesticDataInitiationRemittanceInformationType?
        //supplementaryData: OBSupplementaryData1?
    )
}

public protocol OBWriteDomesticDataInitiationInstructedAmountProtocol {
    var amount: String { get } // OBActiveCurrencyAndAmountSimpleTypeProtocol
    var currency: String  { get } // ActiveOrHistoricCurrencyCodeProtocol
    init(
        amount: String, // OBActiveCurrencyAndAmountSimpleType,
        currency: String // ActiveOrHistoricCurrencyCode
    )
}

public protocol OBWriteDomesticDataInitiationDebtorAccountProtocol {
    var schemeName: String { get } // OBExternalAccountIdentification4Code
    var identification: String { get } // NB Identification
    var name: String? { get }
    //public var secondaryIdentification: SecondaryIdentification?
    init(
        schemeName: String, // OBExternalAccountIdentification4Code,
        identification: String, // Identification,
        name: String?
        //secondaryIdentification: SecondaryIdentification?
    )
}

public protocol OBWriteDomesticDataInitiationCreditorAccountProtocol {
    var schemeName: String { get } // NB OBExternalAccountIdentification4Code
    var identification: String  { get } // NB Identification
    var name: String { get }
    //public var secondaryIdentification: SecondaryIdentification?
    init(
        schemeName: String, // OBExternalAccountIdentification4Code,
        identification: String, // Identification,
        name: String
        //secondaryIdentification: SecondaryIdentification?
    )
}

public protocol OBWriteDomesticDataInitiationRemittanceInformationProtocol {
    var unstructured: String? { get }
    var reference: String? { get }
    init(
        unstructured: String?,
        reference: String?
    )
}

public enum OBWriteDomesticConsentDataAuthorisationProtocolAuthorisationTypeEnum: String, Codable {
    case any = "Any"
    case single = "Single"
}
public protocol OBWriteDomesticConsentDataAuthorisationProtocol: Codable {
    associatedtype AuthorisationType: RawRepresentable, Codable where AuthorisationType.RawValue == String
    var authorisationType: AuthorisationType { get }
    var authorisationTypeEnum: OBWriteDomesticConsentDataAuthorisationProtocolAuthorisationTypeEnum? { get }
    var completionDateTime: Date? { get }
    init(
        authorisationType: OBWriteDomesticConsentDataAuthorisationProtocolAuthorisationTypeEnum,
        completionDateTime: Date?
    ) throws
}

public enum OBWriteDomesticConsentDataSCASupportDataProtocolRequestedSCAExemptionTypeEnum: String, Codable {
    case billPayment = "BillPayment"
    case contactlessTravel = "ContactlessTravel"
    case ecommerceGoods = "EcommerceGoods"
    case ecommerceServices = "EcommerceServices"
    case kiosk = "Kiosk"
    case parking = "Parking"
    case partyToParty = "PartyToParty"
}
public enum OBWriteDomesticConsentDataSCASupportDataProtocolAppliedAuthenticationApproachEnum: String, Codable {
    case ca = "CA"
    case sca = "SCA"
}
public protocol OBWriteDomesticConsentDataSCASupportDataProtocol: Codable {
    associatedtype RequestedSCAExemptionType: RawRepresentable, Codable where RequestedSCAExemptionType.RawValue == String
    associatedtype AppliedAuthenticationApproach: RawRepresentable, Codable where AppliedAuthenticationApproach.RawValue == String
    var requestedSCAExemptionType: RequestedSCAExemptionType? { get }
    var requestedSCAExemptionTypeEnum: OBWriteDomesticConsentDataSCASupportDataProtocolRequestedSCAExemptionTypeEnum?? { get }
    var appliedAuthenticationApproach: AppliedAuthenticationApproach? { get }
    var appliedAuthenticationApproachEnum: OBWriteDomesticConsentDataSCASupportDataProtocolAppliedAuthenticationApproachEnum?? { get }
    var referencePaymentOrderId: String? { get }
    init(
        requestedSCAExemptionType: OBWriteDomesticConsentDataSCASupportDataProtocolRequestedSCAExemptionTypeEnum?,
        appliedAuthenticationApproach: OBWriteDomesticConsentDataSCASupportDataProtocolAppliedAuthenticationApproachEnum?,
        referencePaymentOrderId: String?
    ) throws
}
