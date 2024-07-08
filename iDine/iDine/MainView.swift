//
//  MainView.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/4.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem {
                    Label("菜单", systemImage: "list.dash")
                }
            OrderView()
                .tabItem {
                    Label("订单", systemImage: "square.and.pencil")
                }
            
        }
    }
}

#Preview {
    MainView().environmentObject(Order())
}
