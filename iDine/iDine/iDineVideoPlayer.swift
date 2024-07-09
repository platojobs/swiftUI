//
//  iDineVideoPlayer.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/8.
//

import SwiftUI
import AVKit
struct iDineVideoPlayer: View {
    var body: some View {
        
       
        VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "vedio", withExtension: "mp4")!)){
            
            VStack{
                Text("Watermark")
                    .foregroundStyle(.black)
                    .background(.white.opacity(0.7))
                Spacer()
            }
            .frame(width: 100, height: 100)
            .background(.red.opacity(0.3))
               
        }
        .frame(width: 400,height: 300)
        Spacer()
           
        
    }
    
}

#Preview {
    iDineVideoPlayer()
}
