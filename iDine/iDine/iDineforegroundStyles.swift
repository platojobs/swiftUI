//
//  iDineforegroundStyles.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/10.
//

import SwiftUI

struct iDineforegroundStyles: View {
    var body: some View {
        HStack{
            Image(systemName: "clock.fill")
            Text("set the time")
        }
        .font(.largeTitle)
        .foregroundStyle(
            
            //.quaternary
            
            .linearGradient(colors: [.red , .yellow,.blue],
                        startPoint: .topLeading, endPoint: .bottomTrailing)
        
        
        )
        
    }
}

#Preview {
    iDineforegroundStyles()
}
