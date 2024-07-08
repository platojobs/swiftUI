//
//  iDineTFtextCase.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/8.
//

import SwiftUI

struct iDineTFtextCase: View {
    @State private var name: String = ""
    @State private var password: String = ""
    
    var body: some View {
        
        VStack {
            TextField("请输入姓名", text: $name)
                .textFieldStyle(.roundedBorder)
                .textCase(.uppercase)
                .padding()
            TextField("请输入密码", text: $password)
                .textFieldStyle(.roundedBorder)
                .textCase(.uppercase)
                .padding()
            Button{
                print("姓名:\(name)",password)
            }label: {
                
                HStack{
                    Text("登录")
                        .frame(width: 150,height: 45)
                        .background(.blue)
                        .foregroundColor(.white)
                        .font(.headline)
                }
                .cornerRadius(8)
                
                    
            }
            
            
            Spacer()
        }
        
        
    }
}

#Preview {
    iDineTFtextCase()
}
