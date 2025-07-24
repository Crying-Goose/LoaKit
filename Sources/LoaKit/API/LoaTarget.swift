//
//  LoaTarget.swift
//  LoaKit
//
//  Created by 라주영 on 7/24/25.
//

import Foundation
import Moya

public enum LoaTarget {
    case siblings(name: String)
}

public enum LoaToken {
    // (임시사용) 내 토큰
    public static let key = "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsIng1dCI6IktYMk40TkRDSTJ5NTA5NWpjTWk5TllqY2lyZyIsImtpZCI6IktYMk40TkRDSTJ5NTA5NWpjTWk5TllqY2lyZyJ9.eyJpc3MiOiJodHRwczovL2x1ZHkuZ2FtZS5vbnN0b3ZlLmNvbSIsImF1ZCI6Imh0dHBzOi8vbHVkeS5nYW1lLm9uc3RvdmUuY29tL3Jlc291cmNlcyIsImNsaWVudF9pZCI6IjEwMDAwMDAwMDA1NzU0NjgifQ.UilR2-2GWxBRwSDgPmB2ixK2tkL0xT46fmD_4Gi9V2_TrYCdISEFWNDZz5O5VuJB8gtYlG2AZzaDqYwBLHqI7QLJlbVfyOwR-k0iUhh5vcgtqI67OspYlZh7rtT4-f6gqoqUp5nSrbn8hvHoHTYAkRH4-khynlHGiHBYp7LhHawkto0jwB09sIpvipn9FefkIScqpjk7ACAsxWmGdgw6dn6z-wyRPQiQJzzSBHOI4Z8OjufPp3LAuwBxZJNBqgJB2OtXdqKXe4otLVSlnV1DNOXmF37j-Rk4YR6HlpF9gUx6ZP8e2GSiOBWNbfHb3jBhcxR1_t1AQal6q-_4Oi0zfg"
}

extension LoaTarget: TargetType {
    public var headers: [String : String]? {
        return [
            "Content-Type": "application/json",
            "authorization": "bearer \(LoaToken.key)"
        ]
    }
    
    public var baseURL: URL {
        URL(string: "https://developer-lostark.game.onstove.com")!
    }
    
    public var path: String {
        switch self {
        case .siblings(let name):
            "/characters/\(name)/siblings"
        }
    }
    
    public var method: Moya.Method {
        switch self {
        case .siblings:
            return .get
        }
    }
    
    public var task: Task {
        switch self {
        case .siblings:
            return .requestPlain
        }
    }
}
