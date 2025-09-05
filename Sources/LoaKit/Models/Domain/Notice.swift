//
//  Notice.swift
//  LoaKit
//
//  Created by 라주영 on 9/5/25.
//

import Foundation

public struct Notice: Sendable {
    public let title: String
    public let date: String
    public let link: String
    public let type: String
    
    init(dto: NoticeDTO) {
        self.title = dto.title
        self.date = dto.date
        self.link = dto.link
        self.type = dto.type
    }
}
