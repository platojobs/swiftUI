//
//  iDineApp.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/2.
//

import SwiftUI

@main
struct iDineApp: App {
    @StateObject var order = Order()
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
