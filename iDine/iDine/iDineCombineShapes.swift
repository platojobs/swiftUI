//
//  iDineCombineShapes.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/10.
//

import SwiftUI

struct iDineCombineShapes: View {
    var body: some View {
        iDineCombineShapesContentView()
    }
}

#Preview {
    iDineCombineShapes()
}




struct iDineCombineShapesContentView :View {
    var body: some View {
        
        ScrollView {
            
            VStack{
                
                Circle()
                    .union(.capsule.inset(by: 30))
                    .fill(.blue)
                    .frame(width: 300,height: 500)
                
                Circle().lineSubtraction(.rect.inset(by: 30))
                    .stroke(style:.init(lineWidth: 2,lineCap: .round))
                    .padding()
                    .frame(width: 300,height: 300)
                
                Circle().offset(x:-15)
                    .symmetricDifference(.circle.offset(x:15))
                    .fill(.black)
                    .padding()
                    .frame(width: 300,height: 300)
                    .background(.white)
                
                
                Spacer()
            }
        }
    
    }
}
