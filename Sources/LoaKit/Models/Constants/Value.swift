//
//  Value.swift
//  LoaKit
//
//  Created by 라주영 on 8/6/25.
//

import Foundation

public enum Value: Codable, Sendable {
  case int(Int)
  case double(Double)
  case string(String)
  case bool(Bool)
  case none

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()

        if container.decodeNil() {
            self = .none
        } else if let intVal = try? container.decode(Int.self) {
            self = .int(intVal)
        } else if let doubleVal = try? container.decode(Double.self) {
            self = .double(doubleVal)
        } else if let boolVal = try? container.decode(Bool.self) {
            self = .bool(boolVal)
        } else if let strVal = try? container.decode(String.self) {
            self = .string(strVal)
        } else {
            throw DecodingError.typeMismatch(
                Value.self,
                DecodingError.Context(
                    codingPath: decoder.codingPath,
                    debugDescription: "Wrong type for Value"
                )
            )
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .int(let intVal):
            try container.encode(intVal)
        case .double(let doubleVal):
            try container.encode(doubleVal)
        case .string(let strVal):
            try container.encode(strVal)
        case .bool(let boolVal):
            try container.encode(boolVal)
        case .none:
            try container.encodeNil()
        }
    }
}
