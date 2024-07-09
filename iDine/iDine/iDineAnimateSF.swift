//
//  iDineAnimateSF.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/9.
//

import SwiftUI

struct iDineAnimateSF: View {
    var body: some View {
        VStack{
            
            iDineContent()
            
            iDineContentBounce()
            
            iDineRotateContentView()
            
            iDineSpeedContentView()
            
            Spacer()
        }
        Spacer()
    }
}

#Preview {
    iDineAnimateSF()
}


struct iDineContent:View {
    @State private var petcount = 0
    var body: some View {
        
        Button(action: {
            petcount += 1
        }, label: {
            Label("小狗", systemImage: "dog")
        })
        .symbolEffect(.bounce, value: petcount)
        .font(.headline)
        
    }
}

struct iDineContentBounce:View {
    
    @State private var isFavorite = false
    var body: some View {
        
        Button(action: {
            isFavorite.toggle()
        }, label: {
            Label("邮件", systemImage: "mail.stack")
        })
        .symbolEffect(.bounce.down, value: isFavorite)
        .font(.title)
        
    }
}


// .rotate这个属性没有呀 ios18以后了，.bounce
struct iDineRotateContentView: View {
    @State private var animate = false

    var body: some View {
        Button {
            animate.toggle()
        } label: {
            Image(systemName: "arrow.clockwise.square")
                .symbolEffect(.bounce, value: animate)
                .font(.headline)
        }
    }
}



//
struct iDineSpeedContentView: View {
    @State private var animate = false

    var body: some View {
        Button {
            animate.toggle()
        } label: {
            Image(systemName: "mail.stack")
                .symbolEffect(.bounce,options: .speed(3).repeat(3), value: animate)
                .font(.largeTitle)
        }
    }
}
