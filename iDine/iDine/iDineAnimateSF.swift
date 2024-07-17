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
            
           // iDineContent()
            
           // iDineContentBounce()
            
           // iDineRotateContentView()
            
           // iDineSpeedContentView()
            
           // iDineVariableColorView()
            iDineReplaceView()
            
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


struct iDineVariableColorView: View {
    @State private var animationsRunning = false
    var body: some View {
        Button("开始动画") {
            withAnimation {
                animationsRunning.toggle()
            }
        }
        VStack {
            HStack{
                Image(systemName: "square.stack.3d.up")
                    .symbolEffect(.variableColor.iterative, value: animationsRunning)
                
                Image(systemName: "square.stack.3d.up")
                    
                    .symbolEffect(.variableColor.cumulative, value: animationsRunning)
                
                Image(systemName: "square.stack.3d.up")
                    
                    .symbolEffect(.variableColor.reversing.iterative, value: animationsRunning)
                
                Image(systemName: "square.stack.3d.up")
                    
                    .symbolEffect(.variableColor.reversing.cumulative, value: animationsRunning)
            }
            
            HStack {
                           Image(systemName: "square.stack.3d.up")
                               .symbolEffect(.variableColor.iterative, options: .repeating, value: animationsRunning)

                           Image(systemName: "square.stack.3d.up")
                               .symbolEffect(.variableColor.cumulative, options: .repeat(3), value: animationsRunning)

                           Image(systemName: "square.stack.3d.up")
                               .symbolEffect(.variableColor.reversing.iterative, options: .speed(3), value: animationsRunning)

                           Image(systemName: "square.stack.3d.up")
                               .symbolEffect(.variableColor.reversing.cumulative, options: .repeat(3).speed(3), value: animationsRunning)
                       }
            
            
        }
        .font(.largeTitle)
        
    }
}


struct iDineReplaceView:View {
    @State private var animationsRunning = false
    var body: some View {
        
        VStack{
            Button(action: {
                withAnimation {
                    animationsRunning.toggle()
                }
            }, label: {
                Label("点我", systemImage: animationsRunning ? "checkmark":"heart")
            })
        }
        
    }
}
