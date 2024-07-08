//
//  iDineLettersSpacing.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/8.
//

import SwiftUI

struct iDineLettersSpacing: View {
    @State private var amount = 50.0
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .tracking(20)
        Text("ffi")
            .font(.custom("AmericanTypewriter", size: 72))
            .kerning(amount)
        Text("ffi")
            .font(.custom("AmericanTypewriter", size: 72))
            .tracking(amount)
        
        Slider(value: $amount , in: 1...100){ asd in
            if asd {
                Text("Hello")
            }
        }
        Spacer()
        
    }
}

#Preview {
    iDineLettersSpacing()
}
