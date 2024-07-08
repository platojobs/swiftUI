//
//  iDineRenderingMarkdownText.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/8.
//

import SwiftUI

struct iDineRenderingMarkdownText: View {
    let markdownText: LocalizedStringKey = "* This is **bold** text, this is *italic* text, and this is ***bold, italic*** text."

    var body: some View {
        
        Text("This is regular text.")
            Text("* This is **bold** text, this is *italic* text, and this is ***bold, italic*** text.")
            Text("~~A strikethrough example~~")
            Text("`Monospaced works too`")
        Text("Visit Apple: [click here](https://apple.com)").tint(.orange)
        //禁用markdown
        Text(verbatim:"* This is **bold** text, this is *italic* text, and this is ***bold, italic*** text.")
        
        //可以打开的url 改变点击事件-统一处理
        VStack{
            
            Link("visit", destination: URL(string:  "https://apple.com")!)
            Text("[Visit Apple](https://apple.com)")
        }
        .environment(\.openURL ,OpenURLAction(handler: handleURL(_:)))
        Text("""
             I agree with [Privacy Policy](https://baidu.com)
            and [Terms of service](https://baidu.com)
        """)
        
        Spacer()
    }
    
    func handleURL(_ url: URL) -> OpenURLAction.Result {
        print("Handle\(url) somehow")
        return .handled
    }
    
}

#Preview {
    iDineRenderingMarkdownText()
}
