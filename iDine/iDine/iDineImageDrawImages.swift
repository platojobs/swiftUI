//
//  iDineImageDrawImages.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/8.
//

import SwiftUI

struct iDineImageDrawImages: View {
    var body: some View {
        Image(.shezhi)
        Image(uiImage: .gongrenruzhu)
        Image(systemName: "cloud.heavyrain.fill")
            .font(.largeTitle)
        
        Image(.fullEnglish)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: 100)
        
        Image(.fullEnglishThumb).resizable(resizingMode: .tile)
            .frame(height: 100)
        
       // iDineImage()
        
        //render images using SF Symbols
        Image(systemName: "moon.stars.fill")
            .font(.largeTitle)
        Image(systemName: "wind.snow")
            .font(.largeTitle)
            .foregroundColor(.orange)
        Image(systemName: "cloud.sun.rain.fill")
            .renderingMode(.original)
            .font(.largeTitle)
            .padding(10)
            .background(.gray)
            .clipShape(Circle())
        
        Image(systemName: "person.crop.circle.fill.badge.plus")
            .foregroundStyle(.red)
            .font(.largeTitle)
        
        Image(systemName: "person.crop.circle.fill.badge.plus")
            .foregroundStyle(.red,.cyan)
            .font(.largeTitle)
        
        Image(systemName: "person.crop.circle.fill.badge.plus")
            .renderingMode(.original)
            .foregroundStyle(.red)
            .font(.largeTitle)
        
        iDineImage()
       
        Spacer()
    }
}

#Preview {
    iDineImageDrawImages()
}


struct iDineImage: View {
    var body: some View {
        
        Image(.fullEnglishThumb).resizable(capInsets: EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20)).frame(height: 50)
    }
}

