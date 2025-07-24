//
//  SiblingsDTO.swift
//  LoaKit
//
//  Created by 라주영 on 7/24/25.
//

import Foundation

public struct SiblingDTO: Codable {
    let serverName: String
    let characterName: String
    let characterLevel: Int
    let characterClassName: String
    let itemAvgLevel: String
    
    enum CodingKeys: String, CodingKey {
        case serverName = "ServerName"
        case characterName = "CharacterName"
        case characterLevel = "CharacterLevel"
        case characterClassName = "CharacterClassName"
        case itemAvgLevel = "ItemAvgLevel"
    }
}
