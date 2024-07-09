//
//  iDinePhotosPickerVideo.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/9.
//

import SwiftUI
import PhotosUI
import AVKit

struct iDinePhotosPickerVideo: View {
    var body: some View {
        iDinePhotosPickerVideoView()
    }
}

#Preview {
    iDinePhotosPickerVideo()
}


struct Movie: Transferable {
    
    let url: URL
    
    static var transferRepresentation: some TransferRepresentation {
            FileRepresentation(contentType: .movie) { movie in
                print(movie.url.absoluteString)
                return SentTransferredFile(movie.url)
            } importing: { received in
                let copy = URL.documentsDirectory.appending(path: "movie.mp4")
                print(copy)
                if FileManager.default.fileExists(atPath: copy.path()) {
                    try FileManager.default.removeItem(at: copy)
                }
                
                try FileManager.default.copyItem(at: received.file, to: copy)
                return Self.init(url: copy)
            }
        }
    
}


struct iDinePhotosPickerVideoView: View {
    
    enum Loadstate{
        case unknown, loading,loaded(Movie),failed
    }
    @State private var selectedItem: PhotosPickerItem?
    @State private var loadstate = Loadstate.unknown
    
    var body: some View {
        
        VStack{
            PhotosPicker("选择视频", selection:$selectedItem ,matching: .videos )
            switch loadstate {
            case .unknown:
                EmptyView()
            case .loading:
                ProgressView()
            case .loaded(let movie):
                VideoPlayer(player: AVPlayer(url: movie.url))
                    .scaledToFit()
                    .frame(width: 300,height: 300)
           
            case .failed:
                Text("导入失败")
            }
        }.onChange(of: selectedItem) {
            
            Task {
                do {
                    loadstate = .loading
                    if let movie = try await selectedItem?.loadTransferable(type: Movie.self) {
                        loadstate = .loaded(movie)
                    }else{
                        loadstate = .failed
                    }
                        
                }catch{
                    loadstate = .failed
                }
            }
        }
        
    }
    
    
}
