//
//  iDineContainerRelativeShape.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/8.
//

import SwiftUI

struct iDineContainerRelativeShape: View {
    var body: some View {
        ZStack {
                    ContainerRelativeShape()
                        .inset(by: 4)
                        .fill(.blue)

                    Text("Hello, World!")
                        .font(.title)
                }
                .frame(width: 300, height: 200)
                .background(.red)
                .clipShape(Capsule())
    }
}

#Preview {
    iDineContainerRelativeShape()
}
