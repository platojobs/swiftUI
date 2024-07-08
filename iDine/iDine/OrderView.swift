//
//  OrderView.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/4.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    var body: some View {
        NavigationStack{
            List {
               
                Section {
                    ForEach(order.items){ item in
                        HStack {
                            Text(item.name)
                            Spacer()
                            Text("$\(item.price)")
                        }
                        
                    }
                    .onDelete(perform: deleteItems)
                }
                Section {
                    NavigationLink("下单") {
                       CheckoutView()
                    }
                }
                .disabled(order.items.isEmpty)
                
            }
            .navigationTitle("订单")
            .toolbar(content: {
                EditButton()
            })
        }
        
        
    }
    
    func deleteItems(at offset: IndexSet){
        order.items.remove(atOffsets: offset)
    }
    
}

#Preview {
    OrderView().environmentObject(Order())
}
