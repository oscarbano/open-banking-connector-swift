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
import NIO
import AsyncHTTPClient
import LocalProtocols
import OBATTypes
import LocalTypes

class DecodeBlock: OBATProcessingBlock {
    static func executeInner<T: TypesProtocol>(type: T.Type, input: Data) throws -> [Transaction] {
        let responseObject: [Transaction]
        if
            let responseObjectTmp = try? type.OBATReadTransactionType.decode(decoder: hcm.jsonDecoderDateFormatISO8601WithMilliSeconds, data: input) {
            responseObject = responseObjectTmp.obcTransaction()
        } else if
            let responseObjectTmp = try? type.OBATReadTransactionType.decode(decoder: hcm.jsonDecoderDateFormatISO8601WithSeconds, data: input) {
            responseObject = responseObjectTmp.obcTransaction()
        }
        else {
            //                        let responseObjectTmp = try hcm.jsonDecoderDateFormatISO8601WithSeconds.decode(OBAIReadResourceType.self, from: data)
            throw "Can't decode"
        }
        //print(responseObject)
        
        // Create Transaction
        return responseObject
    }
}

extension TransactionProtocol {
    
    static func httpGet(
        obClient: OBClientProfile,
        accountAccessConsent: AccountAccessConsent,
        endpointPath: String,
        on eventLoop: EventLoop = MultiThreadedEventLoopGroup.currentEventLoop!
    ) -> EventLoopFuture<[Transaction]> {
        
        return eventLoop.makeSucceededFuture(())
            
            // Post claims
            .flatMap({ () -> EventLoopFuture<HTTPClient.Response> in
                
                let url = obClient.obAccountTransactionAPISettings.obBaseURL + endpointPath
                let xFapiFinancialId = obClient.xFapiFinancialId
                guard let accessToken = accountAccessConsent.obTokenEndpointResponse?.access_token else {
                    fatalError()
                }
                let authHeader = "Bearer \(accessToken)"
                var request = hcm.getRequest(
                    url: URL(string: url)!,
                    xFapiFinancialId: xFapiFinancialId,
                    authHeader: authHeader
                )
                request.body = .none
                return hcm.executeMTLS(
                    request: request,
                    httpClientMTLSConfiguration: obClient.httpClientMTLSConfiguration
                )
            })
            
            // Decode response and create AccountAccessConsent
            .flatMapThrowing({ response -> [Transaction] in
                if response.status == .ok,
                    var body = response.body {
                    
                    // Decode response
                    let data = body.readData(length: body.readableBytes)!
                    //print(String(decoding: data, as: UTF8.self))
                    print(response.status.code)
                    let output = try DecodeBlock.execute(obClient.obAccountTransactionAPISettings.apiVersion, data)
                    return output
                } else {
                    if var bodyTmp = response.body,
                        let bodyString = bodyTmp.readString(length: bodyTmp.readableBytes) {
                        print(bodyString)
                    }
                    throw "Bad response..."
                }
            })
            
            .flatMapError({error in
                print(error)
                fatalError()
            })
        
        
        
    }
    
    
}
