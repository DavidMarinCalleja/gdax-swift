//
//  FeedService.swift
//  Pods
//
//  Created by David Marín Calleja on 10/05/18.
//
//

import Foundation
import Starscream

public class FeedService {
    var webSocket: WebSocket

    public init(in environment: Environment) {
        let url = Constants.getUrl(for: environment)
        webSocket = WebSocket(url: url)
        webSocket.delegate = self
        webSocket.enabledSSLCipherSuites = [TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384, TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256]
        webSocket.connect()
    }
}

public extension FeedService {
    func subscribe() {

    }
}

extension FeedService: WebSocketDelegate {
    public func websocketDidConnect(socket: WebSocketClient) {
        Logger.debug("websocketDidConnect")
    }

    public func websocketDidDisconnect(socket: WebSocketClient, error: Error?) {
        Logger.debug("websocketDidDisconnect")
    }

    public func websocketDidReceiveMessage(socket: WebSocketClient, text: String) {
        Logger.debug("websocketDidReceiveMessage")
    }

    public func websocketDidReceiveData(socket: WebSocketClient, data: Data) {
        Logger.debug("websocketDidReceiveData")
    }
}

//private extension FeedService {
//    func getUrl(for environment: Environment) -> URL {
//        switch environment {
//            case .sandbox:
//                return Constants.sandboxUrl
//            case .production:
//                return Constants.productionUrl
//        }
//    }
//}
