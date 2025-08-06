//
//  AvatarDTO.swift
//  LoaKit
//
//  Created by 라주영 on 8/6/25.
//

import Foundation

public struct AvatarDTO: Codable {
    let type: String
    let name: String
    let icon: String
    let grade: String
    let isSet: Bool
    let isInner: Bool
    let tooltip: String
    
    enum CodingKeys: String, CodingKey {
        case type = "Type"
        case name = "Name"
        case icon = "Icon"
        case grade = "Grade"
        case isSet = "IsSet"
        case isInner = "IsInner"
        case tooltip = "Tooltip"
    }
}
