//
//  Equipment.swift
//  LoaKit
//
//  Created by 라주영 on 8/6/25.
//

import Foundation

public struct Equipment: Sendable {
    public let type: String
    public let name: String
    public let icon: String
    public let grade: String
    public let tooltip: String
    
    init(dto: EquipmentDTO) {
        self.type = dto.type
        self.name = dto.name
        self.icon = dto.icon
        self.grade = dto.grade
        self.tooltip = dto.tooltip.htmlStripped
    }
}
