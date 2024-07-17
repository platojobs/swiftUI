//
//  iDineGeometryReader.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/10.
//

import SwiftUI

struct iDineGeometryReader: View {
    var body: some View {
        iDineGeometryReaderContent()
    }
}

#Preview {
    iDineGeometryReader()
}


struct iDineGeometryReaderContent : View {
    var body: some View {
        
        GeometryReader{ geometryReader in
            HStack(spacing: 10) {
                Text("left")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .frame(width: geometryReader.size.width * 0.2)
                    .background(.orange)
                
                Text("right")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .frame(width: geometryReader.size.width * 0.8)
                    .background(.orange)
                
            }
            
        }
        .frame(height: 100)
    }
}
