//
//  Endpoint.swift
//  WeeklyAffixes
//
//  Created by Pierre-Yves TOUZAIN on 06/02/2022.
//

import Foundation

protocol Endpoint {
    var base: String { get }
    var path: String { get }
    var parameters: [String: String] { get }
}

extension Endpoint {
    var urlComponents: URLComponents {
        var components = URLComponents()
        components.scheme = "https"
        components.host = base
        components.path = path
        components.queryItems = parameters.map { URLQueryItem(name: $0.key, value: $0.value) }
        return components
    }
    
    var request: URLRequest? {
        guard let url = urlComponents.url else {
            return nil
        }
        return URLRequest(url: url)
    }
}
