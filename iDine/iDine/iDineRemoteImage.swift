//
//  iDineRemoteImage.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/9.
//

import SwiftUI

struct iDineRemoteImage: View {
    var body: some View {
        RemoteImage(url:"")
    }
}

#Preview {
    iDineRemoteImage()
}


struct RemoteImage: View {
    let url = ""
    var body: some View {
        AsyncImage(url: URL(string: url))
            .padding()
            
        
    }
}
