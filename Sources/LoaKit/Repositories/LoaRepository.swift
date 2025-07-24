//
//  LoaRepository.swift
//  LoaKit
//
//  Created by 라주영 on 7/24/25.
//

import Foundation

public protocol LoaRepositoryProtocol {
    func fetchSiblings(name: String) async throws -> [Siblings]
}

public final class LoaRepository: LoaRepositoryProtocol {
    
    private let apiService: LoaAPIServiceProtocol
    
    public init(apiService: LoaAPIServiceProtocol = LoaService()) {
        self.apiService = apiService
    }
    
    // 계정 캐릭터 전체 조회
    public func fetchSiblings(name: String) async throws -> [Siblings] {
        let response = try await apiService.getSiblings(name: name)
        return response.map { .init(dto: $0) }
    }
}
