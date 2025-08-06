//
//  Profile.swift
//  LoaKit
//
//  Created by 라주영 on 7/24/25.
//

import Foundation

public struct Profile: Sendable {
    public let imageURLString: String
    public let expeditionLevel: Int
    public let pvpGrade: String
    public let townLevel: Int
    public let townName: String
    public let title: String
    public let guildMemberGrade: String
    public let guildName: String
    public let usingSkillPoint: Int
    public let totalSkillPoint: Int
    public let stats: [Stat]
    public let tendencies: [Tendency]
    public let combatPower: String
    public let decorations: Decoration
    public let server: String
    public let name: String
    public let level: Int
    public let className: String
    public let itemLevel: String
    
    init(dto: ProfileDTO) {
        self.imageURLString = dto.characterImage
        self.expeditionLevel = dto.expeditionLevel
        self.pvpGrade = dto.pvpGradeName
        self.townLevel = dto.townLevel ?? 0
        self.townName = dto.townName
        self.title = dto.title
        self.guildMemberGrade = dto.guildMemberGrade
        self.guildName = dto.guildName
        self.usingSkillPoint = dto.usingSkillPoint
        self.totalSkillPoint = dto.totalSkillPoint
        self.stats = dto.stats.map { .init(dto: $0) }
        self.tendencies = dto.tendencies.map { .init(dto: $0) }
        self.combatPower = dto.combatPower
        self.decorations = .init(dto: dto.decorations)
        self.server = dto.serverName
        self.name = dto.characterName
        self.level = dto.characterLevel
        self.className = dto.characterClassName
        self.itemLevel = dto.itemAvgLevel
    }
}

public struct Stat: Sendable {
    public let type: String
    public let value: String
    public let tooltip: [String]
    
    init(dto: StatDTO) {
        self.type = dto.type
        self.value = dto.value
        self.tooltip = dto.tooltip.map { $0.htmlStripped }
    }
}

public struct Tendency: Sendable {
    public let type: String
    public let point: Int
    public let maxPoint: Int
    
    init(dto: TendencyDTO) {
        self.type = dto.type
        self.point = dto.point
        self.maxPoint = dto.maxPoint
    }
}

public struct Decoration: Sendable {
    let symbol: String
    let emblems: [String]
    
    init(dto: DecorationDTO) {
        self.symbol = dto.symbol ?? ""
        self.emblems = dto.emblems ?? []
    }
}
