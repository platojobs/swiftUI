//
//  iDineSafeAreaInsetView.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/10.
//

import SwiftUI

struct iDineSafeAreaInsetView: View {
    var body: some View {
        
       // SafeA()
       // safeB()
        //iDinePersistentSystemOverlaysView()
        SafeC()
    }
}

#Preview {
    iDineSafeAreaInsetView()
}



struct SafeA: View {
    var body: some View {
        
        NavigationStack {
            List(0..<100) { i in
                Text("Row \(i)")
            }
            .navigationTitle("Select a row")
            .safeAreaInset(edge: .bottom) {
                Text("Outside Safe Area")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.blue)
            }
        }
       
    }
}


struct safeB : View {
    var body: some View {
        
        NavigationStack {
            List(0..<100) { i in
                Text("Row \(i)")
            }
            .navigationTitle("Select a row")
            .safeAreaInset(edge: .bottom, alignment: .trailing) {
                Button {
                    print("Show help")
                } label: {
                    Image(systemName: "info.circle.fill")
                        .font(.largeTitle)
                        .symbolRenderingMode(.multicolor)
                        .padding(.trailing)
                }
                .accessibilityLabel("Show help")
            }
        }
    }
}


struct iDinePersistentSystemOverlaysView:View {
    var body: some View {
        
        Text("This needs to take up lots of space")
            .frame(maxWidth: .infinity,maxHeight: .infinity)
            .background(.yellow)
            .persistentSystemOverlays(.visible)
    }
}


struct SafeC: View {
    
    @State private var input = 0.0

        var body: some View {
            Text("Current value: \(input)")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .contentShape(Circle())
                .gesture(
                    DragGesture().onChanged { value in
                        input = value.location.y - value.startLocation.y
                    }
                )
                .defersSystemGestures(on: .vertical)
        }
}
