//
//  WeeklyAffixesService.swift
//  WeeklyAffixes
//
//  Created by Pierre-Yves TOUZAIN on 06/02/2022.
//

import Foundation
import Combine

final class WeeklyAffixesService: APIExecutable {
    let session: URLSession
    
    init(configuration: URLSessionConfiguration) {
        self.session = URLSession(configuration: configuration)
    }
    
    convenience init() {
        self.init(configuration: .default)
    }
    
    public func getWeeklyAffixes(_ endpoint: RaiderIOAPIEndpoint) -> AnyPublisher<WeeklyAffixes, Error> {
        guard let request = endpoint.request else {
            return Fail(error: APIError.invalidRequest).eraseToAnyPublisher()
        }
        return execute(request, decodingType: WeeklyAffixes.self)
    }
}
