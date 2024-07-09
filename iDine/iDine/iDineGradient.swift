//
//  iDineGradient.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/8.
//

import SwiftUI

struct iDineGradient: View {
    var body: some View {
        Text("Hello, World!")
            .padding()
            .font(.largeTitle)
            .foregroundStyle(.white)
            .background(
                LinearGradient(gradient: Gradient(colors: [.white,.cyan,.black]), startPoint: .top, endPoint: .bottom)
            )
        
        Text("hello")
            .padding()
            .font(.largeTitle)
            .foregroundStyle(.red)
            .background(
                
            )
        CircleRenderView()
        Spacer()
        
    }
}

#Preview {
    iDineGradient()
}


struct CircleRenderView: View {
    var body: some View {
        
        Circle()
            .fill(
                RadialGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .black]), center: .center, startRadius: 25, endRadius: 50)
            )
            .frame(width: 100, height: 100)
        
        Circle()
            .fill(
                AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .black]), center: .center)
            )
            .frame(width: 100, height:100)
        Circle()
            .strokeBorder(AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]),center: .center,startAngle: .zero,endAngle: .degrees(360)),lineWidth: 20,antialiased: true)
            .frame(width: 100,height: 100)
        Circle().strokeBorder(AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]),center: .center,startAngle: .zero,endAngle: .degrees(360)), style: StrokeStyle(lineWidth: 10,lineCap: CGLineCap(rawValue: 1)!,lineJoin: CGLineJoin(rawValue: 10)!,miterLimit: 2.3,dash: [0.0,0.1,0.5,0.9],dashPhase: 0.2), antialiased: true)
            .frame(width: 100,height: 100)
        
    }
}
