//
//  iDineSameWidthHeightViews.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/10.
//

import SwiftUI

struct iDineSameWidthHeightViews: View {
    var body: some View {
   
    //iDineSameWidthHeightViewsContent()
        SameWidthViews()
        
    }
}

#Preview {
    iDineSameWidthHeightViews()
}



struct iDineSameWidthHeightViewsContent: View {
    
    
    var body: some View {
        
        HStack {
            
            Text("This is a short string.")
                .padding()
                .frame(maxHeight: .infinity)
                .background(.red)
            
            Text("This is a very long string with lots and lots of text that will definitely run across multiple lines because it's just so long.")
                .padding()
                .frame(maxHeight: .infinity)
                .background(.yellow)
        }
        .fixedSize(horizontal: false, vertical: true)
        .frame(maxHeight: 500)
        
    }
        
}


struct SameWidthViews: View {
    var body: some View {
        
        VStack{
            Button("登录") {
                
            }
            .foregroundStyle(.white)
            .padding()
            .frame(maxWidth: .infinity)
            .background(.blue)
            .clipShape(Capsule())
            
            Button("重设密码") {
                
            }
            .foregroundStyle(.white)
            .padding()
            .frame(maxWidth: .infinity)
            .background(.blue)
            .clipShape(Capsule())
        }
        .fixedSize(horizontal: true, vertical: false)
        
    }
}


