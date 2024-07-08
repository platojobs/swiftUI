//
//  iDineMarkdownTextView.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/8.
//

import SwiftUI

struct iDineMarkdownTextView: View {
    let markdownText: String
    var body: some View {
        
        VStack(alignment: .leading, spacing: 8) {
                    ForEach(parseMarkdown(markdownText), id: \.self) { text in
                        if text.hasPrefix("https://"), let url = URL(string: text) {
                            Link(destination: url) {
                                Text(text)
                                    .foregroundColor(.blue)
                            }
                        } else {
                            Text(text)
                        }
                    }
                }
    }
    
    func parseMarkdown(_ text: String) -> [String] {
            // 这里简单处理，只解析最基本的Markdown链接格式
            // 例如 [显示文本](链接)
            var parts = text.components(separatedBy: "](")
                .map { $0.components(separatedBy: ")[") }
                .map { $0.joined(separator: "") } // 移除Markdown格式的语法
            return parts
        }
}

#Preview {
    iDineMarkdownTextView(markdownText: "[SwiftUI](https://developer.apple.com/swiftui/) s a powerful new way to build user interfaces for iOS, iPadOS, macOS, tvOS, and watchOS apps.")
}
