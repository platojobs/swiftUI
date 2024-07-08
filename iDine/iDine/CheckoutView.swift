//
//  CheckoutView.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/4.
//

import SwiftUI

struct CheckoutView: View {
    let paymentTypes = ["现金", "信用卡", "iDine积分"]
    @State private var paymentType = "现金"
    @EnvironmentObject var order: Order
    
    @State private var addLoyaltyDetails = false
    @State private var loyaltyNumber = ""
    let tipAmounts = [10, 15, 20, 25, 0]
    @State private var tipAmount = 15
    
    @State private var showPaymentAlert = false
    
    var totalPrice: String {
        let total = Double(order.total)
        let tipValue = total / 100 * Double(tipAmount)
        return (total + tipValue).formatted(.currency(code: "USD"))
    }

    var body: some View {
        Form {
            Section{
                Picker("支付方式", selection: $paymentType) {
                    ForEach(paymentTypes,id: \.self){
                        Text($0)
                    }
                }
                
                Toggle("添加信用卡", isOn: $addLoyaltyDetails.animation())
                if addLoyaltyDetails {
                    TextField("输入iDine ID", text: $loyaltyNumber)
                }
                
            }
            
            Section("给小费吗？"){
                Picker("百分比", selection: $tipAmount) {
                    ForEach(tipAmounts,id: \.self){
                        Text("\($0)%")
                    }
                }
                .pickerStyle(.segmented)
            }
            Section("合计:\(totalPrice)"){
                Button("确认支付") {
                    showPaymentAlert.toggle()
                }
            }
        }
        .navigationTitle("支付页面")
        .navigationBarTitleDisplayMode(.inline)
        .alert("确认订单", isPresented: $showPaymentAlert) {
            
        }message: {
            Text("您本次消费金额:\(totalPrice)---非常感谢")
        }
    }
}

#Preview {
    CheckoutView().environmentObject(Order())
}
