//
//  iDineShapes.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/8.
//

import SwiftUI

struct iDineShapes: View {
    var body: some View {
        
        Rectangle().fill(.red).frame(width: 50,height: 50) // 矩形
        Circle().fill(.yellow).frame(width: 50,height: 50) // 圆形
        RoundedRectangle(cornerRadius:8).fill(.blue).frame(width: 50,height: 50) //圆角矩形
        Capsule().fill(.green).frame(width: 50,height: 20) //椭圆
        
        Spacer()
    }
}

#Preview {
    iDineShapes()
}
