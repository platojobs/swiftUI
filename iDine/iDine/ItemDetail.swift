//
//  ItemDetail.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/4.
//

import SwiftUI

struct ItemDetail: View {
    @EnvironmentObject var order: Order
    let item : MenuItem
    var body: some View {
        VStack(alignment: .center){
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit()
                    .padding(4)
                Text("图片:\(item.photoCredit)")
                    .padding(4)
                    .background(.black)
                    .font(.caption)
                    .foregroundColor(.white)
                    .offset(x: -5,y: -5)
            }
            Text(item.description)
                .padding()
            Button{
                order.add(item: item)
            }label: {
                
                HStack {
                    Image("招标采购")
                        .padding()
                    Text("点单")
                        .foregroundStyle(.black)
                    Spacer()
                }
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                .frame(maxWidth: 200,maxHeight: 30)
//                .font(.headline)
//                .fontWeight(.bold)
//                .background(.white)
//                .foregroundColor(.black)
//                .border(.gray, width: 1)
//                .padding()
                
                
            }
            Spacer()
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    
    NavigationStack{
        ItemDetail(item: MenuItem.example).environmentObject(Order())
    }
}
