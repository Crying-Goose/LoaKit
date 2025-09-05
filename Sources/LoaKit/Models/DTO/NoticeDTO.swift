//
//  NoticeDTO.swift
//  LoaKit
//
//  Created by 라주영 on 9/5/25.
//

import Foundation

public struct NoticeDTO: Codable {
    let title: String
    let date: String
    let link: String
    let type: String
    
    enum CodingKeys: String, CodingKey {
        case title = "Title"
        case date = "Date"
        case link = "Link"
        case type = "Type"
    }
}
