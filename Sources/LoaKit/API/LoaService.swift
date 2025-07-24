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
}
