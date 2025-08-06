//
//  String+Extension.swift
//  LoaKit
//
//  Created by 라주영 on 7/24/25.
//

import Foundation

extension String {
    var htmlStripped: String {
        guard let data = self.data(using: .utf8) else { return self }
        if let attrStr = try? NSAttributedString(
            data: data,
            options: [
                .documentType: NSAttributedString.DocumentType.html,
                .characterEncoding: String.Encoding.utf8.rawValue
            ],
            documentAttributes: nil) {
            return attrStr.string
        }
        return self
    }
    
    func toDictionary() -> [String: Value]? {
        guard let data = self.data(using: .utf8) else { return nil }
        do {
            let result = try JSONSerialization.jsonObject(with: data, options: [])
            return result as? [String: Value]
        } catch {
            print("❌ JSON 파싱 실패: \(error.localizedDescription)")
            return nil
        }
    }
}
