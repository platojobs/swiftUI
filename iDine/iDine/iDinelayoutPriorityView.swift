//
//  iDinelayoutPriorityView.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/10.
//

import SwiftUI

struct iDinelayoutPriorityView: View {
    var body: some View {
        iDinelayoutPriority()
    }
}

#Preview {
    iDinelayoutPriorityView()
}


struct iDinelayoutPriority: View {
    var body: some View {
        HStack{
            
            Text("The rain Spain falls mainly on the Spaniards.")
            Text("Knowledge is power, France is bacon.")
                .layoutPriority(1)
        }
        .font(.title)
    }
}
