//
//  WeeklyAffixes.swift
//  WeeklyAffixes
//
//  Created by Pierre-Yves TOUZAIN on 06/02/2022.
//

import Foundation

struct WeeklyAffixes: Decodable {
    enum CodingKeys: String, CodingKey {
        case region
        case title
        case leaderboardURLString = "leaderboard_url"
        case affixes = "affix_details"
    }
    
    var region: String
    var title: String
    var leaderboardURLString: String
    var affixes: [Affix]
}
