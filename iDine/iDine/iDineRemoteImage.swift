//
//  iDineRemoteImage.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/9.
//

import SwiftUI

struct iDineRemoteImage: View {
    var body: some View {
        Text("头像")
        RemoteImage(url:"http://gips3.baidu.com/it/u=3557221034,1819987898&fm=3028&app=3028&f=JPEG&fmt=auto?w=1280&h=960")
        
        //https://pic.rmb.bdstatic.com/bjh/6c2df9ef99c8b585ecb87eecdf495533372.png
        
        //http://gips3.baidu.com/it/u=3557221034,1819987898&fm=3028&app=3028&f=JPEG&fmt=auto?w=1280&h=960
        FullControlRemoteImage(url: "http://gips2.baidu.com/it/u=4231193786,3187314859&fm=3028&app=3028&f=JPEG&fmt=auto?w=1024&h=1024")
        
        Image(systemName: "theatermasks")
            .symbolRenderingMode(.hierarchical)
            .font(.system(size: 44))
            .foregroundStyle(.blue)
        
        Image(systemName: "shareplay")
            .symbolRenderingMode(.palette)
            .foregroundStyle(.blue,.black)
            .font(.system(size: 44))
        
        Image(systemName: "person.3.sequence.fill")
            .symbolRenderingMode(.palette)
           // .foregroundStyle(.red, .yellow, .blue)
            .foregroundStyle(
                
                .linearGradient(colors: [.red, .black], startPoint: .top, endPoint: .bottomTrailing),
                        
                .linearGradient(colors: [.green, .black], startPoint: .top, endPoint: .bottomTrailing),
                        
                    
                .linearGradient(colors: [.blue, .black], startPoint: .top, endPoint: .bottomTrailing)
            
            )
            .font(.system(size: 44))
        
        
        Spacer()
    }
}

#Preview {
    iDineRemoteImage()
}


struct RemoteImage: View {
    var url = ""
    var body: some View {
        AsyncImage(url: URL(string: url),scale: 2){ image in
            image.resizable()
        }placeholder: {
            Color.red
        }
        .background(.gray)
        .frame(width: 128,height: 128)
        //.clipShape(.rect(cornerRadius: 25))
        .border(.red, width: 2)
    }
}

struct  FullControlRemoteImage: View {
    var url = ""
    var body: some View {
        
        AsyncImage(url: URL(string: url)){ phase in
            switch phase {
            case .empty:
                Image(systemName: "error")
            case .success(let image):
                image.resizable()
            case .failure(_):
                
                Image(systemName: "photo")
                    .font(.largeTitle)
                
            @unknown default:
                ProgressView()
            }
            
        }
        .frame(width: 128,height: 128)
    }
}
