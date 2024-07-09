//
//  iDineDynamicallyColor.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/9.
//

import SwiftUI

struct iDineDynamicallyColor: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        Image(systemName: "wifi",variableValue: 0.5)
        iDineDynamicallyColors()
        Spacer()
    }
}

#Preview {
    iDineDynamicallyColor()
}

struct iDineDynamicallyColors: View {
    
    @State private var  value = 0.0
    
    var body: some View {
        
        VStack {
            
            HStack{
                
                Image(systemName: "aqi.low",variableValue: value)
                Image(systemName: "wifi",variableValue: value)
                Image(systemName: "chart.bar.fill",variableValue: value)
                Image(systemName: "waveform",variableValue: value)
                
            }
            
            Slider(value: $value)
        }
        .font(.largeTitle)
        .foregroundColor(.black)
        .padding(15)
        
    }
}
