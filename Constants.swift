//
//  Constants.swift
//  Pods
//
//  Created by David Marín Calleja on 11/05/18.
//
//

import Foundation

public enum Environment {
    case sandbox
    case production
}

public struct Constants {
    struct Constants {
        static let sandboxUrl = URL(string:"wss://ws-feed-public.sandbox.gdax.com")!
        static let productionUrl = URL(string:"wss://ws-feed.gdax.com")!
    }

    static func getUrl(for environment: Environment) -> URL {
        switch environment {
            case .sandbox:
                return Constants.sandboxUrl
            case .production:
                return Constants.productionUrl
        }
    }
}
