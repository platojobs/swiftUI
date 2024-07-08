//
//  iDineTextAlignments.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/8.
//

import SwiftUI

struct iDineTextAlignments: View {
    
    let aligments: [TextAlignment] = [.leading,.center,.trailing]
    @State private var aligment: TextAlignment = .leading
    
    
    var body: some View {
        VStack {
            Picker("Text Aligments", selection: $aligment) {
                ForEach(aligments ,id: \.self){ aligment in
                    Text(String(describing: aligment))
                }
            }
            
            Text("This is an extremely long text string that will never fit even the widest of phones without wrapping")
                .font(.largeTitle)
                .multilineTextAlignment(aligment)
                .frame(width: 300)
        }
    }
}

#Preview {
    iDineTextAlignments()
}
