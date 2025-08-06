//
//  LoaRepository.swift
//  LoaKit
//
//  Created by 라주영 on 7/24/25.
//

import Foundation

public protocol LoaRepositoryProtocol {
    func fetchSiblings(name: String) async throws -> [Siblings]
    func fetchProfile(name: String) async throws -> Profile
    func fetchEquipment(name: String) async throws -> [Equipment]
    func fetchAvatars(name: String) async throws -> [Avatar]
    func fetchCombatSkills(name: String) async throws -> [CombatSkill]
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
    
    // 캐릭터 상세 정보 조회
    public func fetchProfile(name: String) async throws -> Profile {
        let response = try await apiService.getProfile(name: name)
        return .init(dto: response)
    }
    
    public func fetchEquipment(name: String) async throws -> [Equipment] {
        let response = try await apiService.getEqupment(name: name)
        return response.map { .init(dto: $0) }
    }
    
    public func fetchAvatars(name: String) async throws -> [Avatar] {
        let response = try await apiService.getAvatars(name: name)
        return response.map { .init(dto: $0) }
    }
    
    public func fetchCombatSkills(name: String) async throws -> [CombatSkill] {
        let response = try await apiService.getCombatSkills(name: name)
        return response.map { .init(dto: $0) }
    }
}
