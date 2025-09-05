//
//  Event.swift
//  LoaKit
//
//  Created by 라주영 on 9/5/25.
//

import Foundation

public struct Event: Sendable {
    public let title: String
    public let thumbnail: String
    public let link: String
    public let startDate: String
    public let endDate: String
    public let rewardDate: String?
    
    init(dto: EventDTO) {
        self.title = dto.title
        self.thumbnail = dto.thumbnail
        self.link = dto.link
        self.startDate = dto.startDate
        self.endDate = dto.endDate
        self.rewardDate = dto.rewardDate
    }
}
