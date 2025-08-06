//
//  LoaService.swift
//  LoaKit
//
//  Created by 라주영 on 7/24/25.
//

import Foundation
import Moya

public protocol LoaAPIServiceProtocol {
    func getSiblings(name: String) async throws -> [SiblingDTO]
    func getProfile(name: String) async throws -> ProfileDTO
    func getEqupment(name: String) async throws -> [EquipmentDTO]
    func getAvatars(name: String) async throws -> [AvatarDTO]
    func getCombatSkills(name: String) async throws -> [CombatSkillDTO]
}

struct CustomURLLoggerPlugin: PluginType {
    func willSend(_ request: RequestType, target: TargetType) {
        print("🌐 요청 URL:", request.request?.url?.absoluteString ?? "없음")
    }
}

public final class LoaService: LoaAPIServiceProtocol {
    
    private let provider = MoyaProvider<LoaTarget>(plugins: [CustomURLLoggerPlugin()])
    
    public init() {}
    
    // 캐릭터명으로 보유 캐릭터들 검색
    public func getSiblings(name: String) async throws -> [SiblingDTO] {
        return try await withCheckedThrowingContinuation { continuation in
            provider.request(.siblings(name: name)) { result in
                switch result {
                case .success(let response):
                    do {
                        let dto = try JSONDecoder().decode([SiblingDTO].self, from: response.data)
                        continuation.resume(returning: dto)
                    } catch {
                        continuation.resume(throwing: error)
                    }
                case .failure(let error):
                    continuation.resume(throwing: error)
                }
            }
        }
    }
    
    // 캐릭터 정보(스탯 등) 검색
    public func getProfile(name: String) async throws -> ProfileDTO {
        return try await withCheckedThrowingContinuation { continuation in
            provider.request(.profiles(name: name)) { result in
                switch result {
                case .success(let response):
                    do {
                        let dto = try JSONDecoder().decode(ProfileDTO?.self, from: response.data)
                        guard let dto else {
                            fatalError("Not found Character Data")
                        }
                        continuation.resume(returning: dto)
                    } catch {
                        continuation.resume(throwing: error)
                    }
                case .failure(let error):
                    continuation.resume(throwing: error)
                }
            }
        }
    }
    
    // 캐릭터 장비 검색
    public func getEqupment(name: String) async throws -> [EquipmentDTO] {
        return try await withCheckedThrowingContinuation { continuation in
            provider.request(.equipment(name: name)) { result in
                switch result {
                case .success(let response):
                    do {
                        let dto = try JSONDecoder().decode([EquipmentDTO].self, from: response.data)
                        continuation.resume(returning: dto)
                    } catch {
                        continuation.resume(throwing: error)
                    }
                case .failure(let error):
                    continuation.resume(throwing: error)
                }
            }
        }
    }
    
    public func getAvatars(name: String) async throws -> [AvatarDTO] {
        return try await withCheckedThrowingContinuation { continuation in
            provider.request(.avatars(name: name)) { result in
                switch result {
                case .success(let response):
                    do {
                        let dto = try JSONDecoder().decode([AvatarDTO].self, from: response.data)
                        continuation.resume(returning: dto)
                    } catch {
                        continuation.resume(throwing: error)
                    }
                case .failure(let error):
                    continuation.resume(throwing: error)
                }
            }
        }
    }
    
    public func getCombatSkills(name: String) async throws -> [CombatSkillDTO] {
        return try await withCheckedThrowingContinuation { continuation in
            provider.request(.combatSkills(name: name)) { result in
                switch result {
                case .success(let response):
                    do {
                        let dto = try JSONDecoder().decode([CombatSkillDTO].self, from: response.data)
                        continuation.resume(returning: dto)
                    } catch {
                        continuation.resume(throwing: error)
                    }
                case .failure(let error):
                    continuation.resume(throwing: error)
                }
            }
        }
    }
}
