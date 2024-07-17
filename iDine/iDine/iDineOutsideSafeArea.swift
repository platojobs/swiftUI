//
//  iDineOutsideSafeArea.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/10.
//

import SwiftUI

struct iDineOutsideSafeArea: View {
    var body: some View {
        iDineOutsideSafeAreaView()
    }
}

#Preview {
    iDineOutsideSafeArea()
}


struct iDineOutsideSafeAreaView: View {
    var body: some View {
        
        
        Text("Hello World")
                .frame(minWidth: 100, maxWidth: .infinity, minHeight: 100, maxHeight: .infinity)
                .background(.gray)
                .ignoresSafeArea()
        
    }
}
