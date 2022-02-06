//
//  Affix.swift
//  WeeklyAffixes
//
//  Created by Pierre-Yves TOUZAIN on 06/02/2022.
//

import Foundation

struct Affix: Decodable, Identifiable {
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case description
        case iconName = "icon"
        case wowheadURLString = "wowhead_url"
    }
    
    var id: Int
    var name: String
    var description: String
    var iconName: String
    var wowheadURLString: String
}
