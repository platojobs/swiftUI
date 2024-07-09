//
//  iDineSelectText.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/8.
//

import SwiftUI

struct iDineSelectText: View {
    var body: some View {
        
//        VStack {
//
//            Text("Hello, World!")
//            Text("Break it down!")
//                .textSelection(.enabled)
//            
//            VStack {
//                Text("you can touch me ")
//                Text("try again please")
//            }
//            .textSelection(.enabled)
//        }
        
        List(0..<8){ index in
            Text("Row\(index)")
        }
        .textSelection(.enabled)
        
        Spacer()
    }
}

#Preview {
    iDineSelectText()
}
