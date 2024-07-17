//
//  iDineReadRGBView.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/9.
//

import SwiftUI

struct iDineReadRGBView: View {
    
    @Environment(\.self) var envir
    @State private var color: Color = .red
    @State private var resolvedColor: Color.Resolved?
    @State private var json  = " "
    var body: some View {
        
        VStack{
            
            ColorPicker("选择你喜欢的颜色", selection: $color)
            
            if let resolvedColor {
                Text("Red:\(resolvedColor.red)")
                Text("Green:\(resolvedColor.green)")
                Text("Blue:\(resolvedColor.blue)")
                Text("Opacity:\(resolvedColor.opacity)")
            }
            
            Text(json)
            
        }
        .padding()
        .onChange(of: color, initial: true ,getcolor)
        
        if let resol = resolvedColor{
            Rectangle()
                .fill(Color(resol).gradient)
                .ignoresSafeArea()
                .frame(width: 100,height: 100)
        }
        Spacer()
        
        
        
    }
    
    func getcolor(){
        resolvedColor = color.resolve(in: envir)
        
        if let colordata = try? JSONEncoder().encode(resolvedColor){
            json = String(decoding: colordata, as: UTF8.self)
        }

    }
}

#Preview {
    iDineReadRGBView()
}

