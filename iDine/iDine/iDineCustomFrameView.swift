//
//  iDineCustomFrameView.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/10.
//

import SwiftUI

struct iDineCustomFrameView: View {
    var body: some View {
        iDineCustomFrameViewContentView()
    }
}

#Preview {
    iDineCustomFrameView()
}



struct iDineCustomFrameViewContentView: View {
    
    var body: some View {
        
        Button(action: {
            print("点击")
        }, label: {
            Text("welocme")
                .frame(minWidth: 0,maxWidth: 200,minHeight: 0,maxHeight: 100)
                .font(.largeTitle)
                .foregroundStyle(.white)
                .background(.blue)
                .cornerRadius(100)
        })
        
        
        Text("Please log in ")
            .frame(minWidth: 0,maxWidth: .infinity,minHeight: 0,maxHeight: .infinity)
            .font(.largeTitle)
            .foregroundStyle(.white)
            .background(.orange)
        
        
        
        Spacer()
        
    }
}
