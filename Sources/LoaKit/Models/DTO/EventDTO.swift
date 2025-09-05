//
//  EventDTO.swift
//  LoaKit
//
//  Created by 라주영 on 9/5/25.
//

import Foundation

public struct EventDTO: Codable {
    let title: String
    let thumbnail: String
    let link: String
    let startDate: String
    let endDate: String
    let rewardDate: String?
    
    enum CodingKeys: String, CodingKey {
        case title = "Title"
        case thumbnail = "Thumbnail"
        case link = "Link"
        case startDate = "StartDate"
        case endDate = "EndDate"
        case rewardDate = "RewardDate"
    }
}
