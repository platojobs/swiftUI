//
//  iDinePhotosPicker.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/9.
//

import SwiftUI
import PhotosUI
struct iDinePhotosPicker: View {
    var body: some View {
       // Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
       // PhotosPickerView()
        MultiPhotosPickerView()
       // Spacer()
    }
}

#Preview {
    iDinePhotosPicker()
}


struct PhotosPickerView: View {
    
    @State private var avatarItem: PhotosPickerItem?
    @State private var avatarImage: Image?

    var body: some View {
        
        VStack {
            PhotosPicker("选择相册", selection: $avatarItem,matching: .images)
            avatarImage?.resizable()
                .scaledToFit()
                .frame(width: 100,height: 100)
        }
        .onChange(of: avatarItem) {
            
            Task {
                            if let loaded = try? await avatarItem?.loadTransferable(type: Image.self) {
                                avatarImage = loaded
                            } else {
                                print("Failed")
                            }
                        }
        }
        
    }
}



struct MultiPhotosPickerView: View {
    @State private var selectedItems = [PhotosPickerItem]()
    @State private var selectedImages = [Image]()

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(0..<selectedImages.count, id: \.self) { i in
                        selectedImages[i]
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                    }
                }
            }
            .toolbar{
                
               PhotosPicker("选择照片", selection: $selectedItems, matching: .images)
                            .padding(10)
                            .font(.headline)
                
            }
            .onChange(of: selectedItems) {
                Task {
                    selectedImages.removeAll()

                    for item in selectedItems {
                        if let image = try? await item.loadTransferable(type: Image.self) {
                            selectedImages.append(image)
                        }
                    }
                }
            }
        }
    }
}
