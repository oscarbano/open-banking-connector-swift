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
import NIOSSL

struct OpenIDConfigurationOverrides {
    var registration_endpoint: String?
    mutating func update(with newOverrides: OpenIDConfigurationOverrides) {
        if let newValue = newOverrides.registration_endpoint {
            registration_endpoint = newValue
        }
    }
}

struct OBClientRegistrationClaimsOverrides {
    var grant_types: [String]?
    var token_endpoint_auth_method: String?
    var token_endpoint_auth_signing_alg: Optional<String?>
    mutating func update(with newOverrides: OBClientRegistrationClaimsOverrides) {
        if let newValue = newOverrides.grant_types {
            grant_types = newValue
        }
        if let newValue = newOverrides.token_endpoint_auth_method {
            token_endpoint_auth_method = newValue
        }
        if let newValue = newOverrides.token_endpoint_auth_signing_alg {
            token_endpoint_auth_signing_alg = newValue
        }
    }
}

struct OBClientRegistrationResponseOverrides {
    var grant_types: [String]?
    mutating func update(with newOverrides: OBClientRegistrationResponseOverrides) {
        if let newValue = newOverrides.grant_types {
            grant_types = newValue
        }
    }
}

struct HTTPClientMTLSConfigurationOverrides {
    var tlsCertificateVerification: CertificateVerification?
    var tlsRenegotiationSupport: NIORenegotiationSupport?
    mutating func update(with newOverrides: HTTPClientMTLSConfigurationOverrides) {
        if let newValue = newOverrides.tlsCertificateVerification {
            tlsCertificateVerification = newValue
        }
        if let newValue = newOverrides.tlsRenegotiationSupport {
            tlsRenegotiationSupport = newValue
        }
    }
}

struct ASPSPOverrides {
    var openIDConfigurationOverrides: OpenIDConfigurationOverrides?
    var httpClientMTLSConfigurationOverrides: HTTPClientMTLSConfigurationOverrides?
    var obClientRegistrationClaimsOverrides: OBClientRegistrationClaimsOverrides?
    var obClientRegistrationResponseOverrides: OBClientRegistrationResponseOverrides?
    var children: [String: ASPSPOverrides]?
    mutating func update(with newOverrides: ASPSPOverrides) {
        if let newValue = newOverrides.openIDConfigurationOverrides {
            if var openIDConfigurationOverrides = openIDConfigurationOverrides {
                openIDConfigurationOverrides.update(with: newValue)
            } else {
                openIDConfigurationOverrides = newValue
            }
        }
        if let newValue = newOverrides.httpClientMTLSConfigurationOverrides {
            if var httpClientMTLSConfigurationOverrides = httpClientMTLSConfigurationOverrides {
                httpClientMTLSConfigurationOverrides.update(with: newValue)
            } else {
                httpClientMTLSConfigurationOverrides = newValue
            }
        }
        if let newValue = newOverrides.obClientRegistrationClaimsOverrides {
            if var obClientRegistrationClaimsOverrides = obClientRegistrationClaimsOverrides {
                obClientRegistrationClaimsOverrides.update(with: newValue)
            } else {
                obClientRegistrationClaimsOverrides = newValue
            }
            
        }
        if let newValue = newOverrides.obClientRegistrationResponseOverrides {
            if var obClientRegistrationResponseOverrides = obClientRegistrationResponseOverrides {
                obClientRegistrationResponseOverrides.update(with: newValue)
            } else {
                obClientRegistrationResponseOverrides = newValue
            }
            
        }
        children = newOverrides.children
    }
}

func getASPSPOverrides(issuerURL: String) -> ASPSPOverrides? {
    if let firstKey = aspspOverrides.keys.first(where: issuerURL.hasPrefix) {
        var overrides = aspspOverrides[firstKey]!
        while let children = overrides.children,
            let nextKey = children.keys.first(where: issuerURL.hasPrefix) {
                overrides.update(with: children[nextKey]!)
        }
        return overrides
    } else {
        return nil
    }
}

let aspspOverrides: [String: ASPSPOverrides] = [
    "https://modelobankauth2018.o3bank.co.uk:4101": ASPSPOverrides(
        openIDConfigurationOverrides: nil,
//        openIDConfigurationOverrides: OpenIDConfigurationOverrides(
//            registration_endpoint: "https://modelobank2018.o3bank.co.uk:4501/reg"
//        ),
        httpClientMTLSConfigurationOverrides: nil,
        obClientRegistrationClaimsOverrides: OBClientRegistrationClaimsOverrides(
            grant_types: ["client_credentials", "authorization_code"],
            token_endpoint_auth_method: nil,
            token_endpoint_auth_signing_alg: "PS256"
        ),
        obClientRegistrationResponseOverrides: nil,
        children: nil
    ),
    "https://api.newdaycards.com": ASPSPOverrides(
        openIDConfigurationOverrides: nil,
        httpClientMTLSConfigurationOverrides: HTTPClientMTLSConfigurationOverrides(
            tlsCertificateVerification: CertificateVerification.none,
            tlsRenegotiationSupport: .once
        ),
        obClientRegistrationClaimsOverrides: OBClientRegistrationClaimsOverrides(
            grant_types: nil,
            token_endpoint_auth_method: "client_secret_basic",
            token_endpoint_auth_signing_alg: "PS256"
        ),
        obClientRegistrationResponseOverrides: OBClientRegistrationResponseOverrides(
            grant_types: ["client_credentials", "authorization_code", "refresh_token"]
        ),
       children: nil
    ),
    "https://ob.natwest.useinfinite.io": ASPSPOverrides(
        openIDConfigurationOverrides: nil,
        httpClientMTLSConfigurationOverrides: HTTPClientMTLSConfigurationOverrides(
            tlsCertificateVerification: CertificateVerification.none,
            tlsRenegotiationSupport: nil
        ),
        obClientRegistrationClaimsOverrides: nil,
        obClientRegistrationResponseOverrides: nil,
       children: nil
    )
]