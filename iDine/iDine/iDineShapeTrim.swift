//
//  iDineShapeTrim.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/8.
//

import SwiftUI

struct iDineShapeTrim: View {
    var body: some View {
        Circle()
            .trim(from: 0.5,to: 1)
            .fill(.gray)
            .frame(width: 100,height: 100)
        ProgressView()
        Spacer()
    }
}

#Preview {
    iDineShapeTrim()
}

struct ProgressView: View {
    
    @State private var completionAmount = 0.0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        
        Circle().trim(from: 0,to: completionAmount)
            .stroke(.red, lineWidth: 10)
            .frame(width: 100,height: 100)
            .rotationEffect(.degrees(-180))
            .onReceive(timer, perform: { _ in
                
                withAnimation {
                    if completionAmount == 0.4{
                       // completionAmount = 0.0
                    }else{
                        completionAmount += 0.1
                    }
                } completion: {
                    
                }

            })
    }
}
