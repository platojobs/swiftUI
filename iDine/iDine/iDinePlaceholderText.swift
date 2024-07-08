//
//  iDinePlaceholderText.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/8.
//

import SwiftUI

struct iDinePlaceholderText: View {
    var body: some View {
        Text("Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!")
            .font(.title)
            .redacted(reason: .placeholder)
        
        VStack {
            Text("hello")
            Text("hellooo")
                
        }.font(.title)
            .redacted(reason: .placeholder)
        
        iDinePTview()
        
        
        VStack{
            Text("卡号").font(.headline)
            Text("1234 4567 5675 443")
                .privacySensitive()
        }
        
        PrivacySensitive()
        
        Spacer()
        
        
    }
}

#Preview {
    iDinePlaceholderText()
}


struct iDinePTview: View {
    
    @Environment(\.redactionReasons) var redactionReasons
    let message = "The rain in Spain falls mainly on the Spaniards"
    
    var body: some View {
        
        if redactionReasons != .placeholder{
            Text("Loading...")
        }else{
            Text(message).redacted(reason: redactionReasons)
        }
        
    }
}


struct PrivacySensitive: View {
    
    @Environment(\.redactionReasons) var redactionReasons
    var body: some View {
        
        VStack{
            Text("卡号")
                .font(.headline)
            if redactionReasons.contains(.privacy){
                Text("[HIDDEN]")
            }else{
                Text("1234 4567 5675 443")
            }
        }
        .background(.gray)
        
    }
}
