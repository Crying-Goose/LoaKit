//
//  CombatSkill.swift
//  LoaKit
//
//  Created by 라주영 on 8/7/25.
//

import Foundation

public struct CombatSkill: Sendable {
    public let name: String
    public let icon: String
    public let level: Int
    public let type: String
    public let skillType: Int
    public let tripods: [Tripod]
    public let rune: SkillRune?
    public let tooltip: String
    
    init(dto: CombatSkillDTO) {
        self.name = dto.name
        self.icon = dto.icon
        self.level = dto.level
        self.type = dto.type
        self.skillType = dto.skillType
        self.tripods = dto.tripods.map { .init(dto: $0) }
        self.rune = dto.rune.map { .init(dto: $0) }
        self.tooltip = dto.tooltip.htmlStripped
    }
}

public struct Tripod: Sendable {
    public let tier: Int
    public let slot: Int
    public let name: String
    public let icon: String
    public let isSelected: Bool
    public let tooltip: String
    
    init(dto: TripodDTO) {
        self.tier = dto.tier
        self.slot = dto.slot
        self.name = dto.name
        self.icon = dto.icon
        self.isSelected = dto.isSelected
        self.tooltip = dto.tooltip.htmlStripped
    }
}


public struct SkillRune: Sendable {
    public let name: String
    public let icon: String
    public let grade: String
    public let tooltip: String
    
    init(dto: SkillRuneDTO) {
        self.name = dto.name
        self.icon = dto.icon
        self.grade = dto.grade
        self.tooltip = dto.tooltip.htmlStripped
    }
}
