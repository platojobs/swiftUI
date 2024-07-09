//
//  iDineStrokeShapes.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/8.
//

import SwiftUI

struct iDineStrokeShapes: View {
    var body: some View {
        
       
//            Circle()
//                .stroke(.gray,lineWidth:45)
//                //.fill(.red)
//                .stroke(.blue,lineWidth:35)
//                .stroke(.green,lineWidth: 25)
//                .stroke(.red,lineWidth:15)
//                .stroke(.yellow,lineWidth:5)
//                .frame(width: 150,height: 150)
            
//            Circle()
//                .stroke(.blue, lineWidth: 20)
//                .background(Circle().fill(.red))
//                .frame(width: 100,height: 100)
        
//        ZStack{
//            Circle().fill(.blue)
//           // Circle().stroke(.red, lineWidth: 10) //向内向外都扩展
//            Circle().strokeBorder(.red,lineWidth: 20) //只向内扩展
//        }
//        .frame(width: 100,height: 100)
        
        Circle().fill(.blue, strokeBorder: .red, lineWidth: 20)
            .frame(width: 100,height: 100)
        Circle().fill(fillstyle: .blue, stroke: .red, lineWidth: 20)
            .frame(width: 100,height: 100)
        
        Spacer()
    }
}

#Preview {
    iDineStrokeShapes()
}


extension Shape {
    func fill<Fill: ShapeStyle, Stroke:ShapeStyle>(fillstyle: Fill,stroke: Stroke,lineWidth: CGFloat = 1.0) ->some View{
        self.stroke(stroke,lineWidth: lineWidth)
            .background(self.fill(fillstyle))
    }
}

extension InsettableShape {
    
    func fill<Fill: ShapeStyle, Stroke: ShapeStyle>(_ fillStyle: Fill, strokeBorder strokeStyle: Stroke, lineWidth: Double = 1) -> some View {
            self
                .strokeBorder(strokeStyle, lineWidth: lineWidth)
                .background(self.fill(fillStyle))
        }
}
