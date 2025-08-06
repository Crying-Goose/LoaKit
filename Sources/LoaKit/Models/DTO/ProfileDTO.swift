//
//  ProfileDTO.swift
//  LoaKit
//
//  Created by 라주영 on 7/24/25.
//

import Foundation

public struct ProfileDTO: Codable {
    let characterImage: String
    let expeditionLevel: Int
    let pvpGradeName: String
    let townLevel: Int?
    let townName: String
    let title: String
    let guildMemberGrade: String
    let guildName: String
    let usingSkillPoint: Int
    let totalSkillPoint: Int
    let stats: [StatDTO]
    let tendencies: [TendencyDTO]
    let combatPower: String
    let decorations: DecorationDTO
    let serverName: String
    let characterName: String
    let characterLevel: Int
    let characterClassName: String
    let itemAvgLevel: String
    
    enum CodingKeys: String, CodingKey {
        case characterImage = "CharacterImage"
        case expeditionLevel = "ExpeditionLevel"
        case pvpGradeName = "PvpGradeName"
        case townLevel = "TownLevel"
        case townName = "TownName"
        case title = "Title"
        case guildMemberGrade = "GuildMemberGrade"
        case guildName = "GuildName"
        case usingSkillPoint = "UsingSkillPoint"
        case totalSkillPoint = "TotalSkillPoint"
        case stats = "Stats"
        case tendencies = "Tendencies"
        case combatPower = "CombatPower"
        case decorations = "Decorations"
        case serverName = "ServerName"
        case characterName = "CharacterName"
        case characterLevel = "CharacterLevel"
        case characterClassName = "CharacterClassName"
        case itemAvgLevel = "ItemAvgLevel"
    }
}

public struct StatDTO: Codable {
    let type: String
    let value: String
    let tooltip: [String]
    
    enum CodingKeys: String, CodingKey {
        case type = "Type"
        case value = "Value"
        case tooltip = "Tooltip"
    }
}

public struct TendencyDTO: Codable {
    let type: String
    let point: Int
    let maxPoint: Int
    
    enum CodingKeys: String, CodingKey {
        case type = "Type"
        case point = "Point"
        case maxPoint = "MaxPoint"
    }
}

public struct DecorationDTO: Codable {
    let symbol: String?
    let emblems: [String]?
    
    enum CodingKeys: String, CodingKey {
        case symbol = "Symbol"
        case emblems = "Emblems"
    }
}
