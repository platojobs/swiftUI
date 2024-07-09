//
//  iDineBackground.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/8.
//

import SwiftUI

struct iDineBackground: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.system(size: 48))
            .padding(10)
            .background(
            
               // Rectangle().fill(.gray).cornerRadius(20)
               // Image(.fullEnglish).resizable()
                Circle().fill(.gray).frame(width: 100,height: 100)
                
            
            )
            .clipped() // clip
    }
}

#Preview {
    iDineBackground()
}
