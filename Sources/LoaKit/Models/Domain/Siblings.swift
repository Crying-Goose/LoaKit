//
//  Siblings.swift
//  LoaKit
//
//  Created by 라주영 on 7/24/25.
//

import Foundation

public struct Siblings: Sendable {
    public let server: String
    public let name: String
    public let level: Int
    public let className: String
    public let itemLevel: String
    
    init(dto: SiblingDTO) {
        self.server = dto.serverName
        self.name = dto.characterName
        self.level = dto.characterLevel
        self.className = dto.characterClassName
        self.itemLevel = dto.itemAvgLevel
    }
}
