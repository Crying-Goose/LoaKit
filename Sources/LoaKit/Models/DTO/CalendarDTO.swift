//
//  CalendarDTO.swift
//  LoaKit
//
//  Created by 라주영 on 9/5/25.
//

import Foundation

public struct CalendarDTO: Codable {
    let CategoryName: String
    let ContentsName: String
    let ContentsIcon: String
    let MinItemLevel: Int
    let StartTimes: [String]
    let Location: String
}
