//
//  iDineIndividualView.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/10.
//

import SwiftUI

struct iDineIndividualView: View {
    var body: some View {
        iDineIndividualViewContentView()
        Spacer()
    }
}

#Preview {
    iDineIndividualView()
}

struct iDineIndividualViewContentView: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
            Text("Hello, World!")
                .padding(.bottom,100)
                .background(.orange)
            Text("Hello, World!")
        }
    }
}
