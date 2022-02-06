//
//  RaiderIOAPIEndpoint.swift
//  WeeklyAffixes
//
//  Created by Pierre-Yves TOUZAIN on 06/02/2022.
//

import Foundation

public enum RaiderIOAPIEndpoint {
    case weeklyAffixes
}

extension RaiderIOAPIEndpoint: Endpoint {
    var parameters: [String : String] {
        switch self {
        case .weeklyAffixes:
            return ["region":"eu", "locale":"en"]
        }
    }
    
    var base: String {
        return "raider.io"
    }
    
    var path: String {
        switch self {
        case .weeklyAffixes:
            return "/api/v1/mythic-plus/affixes"
        }
    }
}
