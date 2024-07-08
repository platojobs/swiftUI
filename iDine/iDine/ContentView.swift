//
//  ContentView.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/2.
//

import SwiftUI

struct ContentView: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    var body: some View {
        NavigationStack {
           List {
             ForEach(menu){ section in
                 Section {
                     ForEach(section.items){ item in
                         NavigationLink(value: item) {
                             ItemRow(item: item)
                         }.navigationDestination(for: MenuItem.self) { item in
                             ItemDetail(item: item)
                         }
                     }
                 } header: {
                     Text(section.name)
                         .font(.headline)
                         .foregroundStyle(.black)
                         
                 }
            }
        }
        .navigationTitle("菜单")
        .listStyle(.grouped)
      }
    }
}

#Preview {
    ContentView()
}
