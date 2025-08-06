//
//  CombatSkillDTO.swift
//  LoaKit
//
//  Created by 라주영 on 8/6/25.
//

import Foundation

public struct CombatSkillDTO: Codable {
    let name: String
    let icon: String
    let level: Int
    let type: String
    let skillType: Int
    let tripods: [TripodDTO]
    let rune: SkillRuneDTO?
    let tooltip: String
    
    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case icon = "Icon"
        case level = "Level"
        case type = "Type"
        case skillType = "SkillType"
        case tripods = "Tripods"
        case rune = "Rune"
        case tooltip = "Tooltip"
    }
}

public struct TripodDTO: Codable {
    let tier: Int
    let slot: Int
    let name: String
    let icon: String
    let isSelected: Bool
    let tooltip: String
    
    enum CodingKeys: String, CodingKey {
        case tier = "Tier"
        case slot = "Slot"
        case name = "Name"
        case icon = "Icon"
        case isSelected = "IsSelected"
        case tooltip = "Tooltip"
    }
}

public struct SkillRuneDTO: Codable {
    let name: String
    let icon: String
    let grade: String
    let tooltip: String
    
    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case icon = "Icon"
        case grade = "Grade"
        case tooltip = "Tooltip"
    }
}
