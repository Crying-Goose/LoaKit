//
//  Avatar.swift
//  LoaKit
//
//  Created by 라주영 on 8/6/25.
//

import Foundation

public struct Avatar: Sendable {
    public let type: String
    public let name: String
    public let icon: String
    public let grade: String
    public let isSet: Bool
    public let isInner: Bool
    public let tooltip: String
    
    init(dto: AvatarDTO) {
        self.type = dto.type
        self.name = dto.name
        self.icon = dto.icon
        self.grade = dto.grade
        self.isSet = dto.isSet
        self.isInner = dto.isInner
        self.tooltip = dto.tooltip.htmlStripped
    }
}
