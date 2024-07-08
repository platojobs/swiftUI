//
//  iDineLabel.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/8.
//

import SwiftUI

struct iDineLabel: View {
    var body: some View {
        
            
            
            Label("账户", systemImage: "folder.circle")
                .padding(10)
                .font(.headline)
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                .labelStyle(.titleOnly)
            
            
            Label("Welcome to the app", image: "设计师傅入驻")
                .padding(10)
                .background(.blue)
                .cornerRadius(10)
                .labelStyle(.iconOnly)
        
        
             Label("两者都显示的文字", image: "设计师傅入驻")
            .labelStyle(.titleAndIcon)
            .padding(10)
            .background(.blue)
            .cornerRadius(8)
            
            
        Label(
            title: { Text("自定义的文本")
                    .font(.headline)
                    .padding(10)
                    .background(.gray)
                    .clipShape(Capsule())
                
            },
            icon: {
//                Image(systemName: "42.circle")
//                    .frame(width: 40,height: 40)
//                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 40, height: 40)))
//                    .background(.gray)
                RoundedRectangle(cornerRadius: 10)
                    .fill(.gray)
                    .frame(width: 40,height: 40)
            }
        )
            
        
    }
}

#Preview {
    iDineLabel()
}
