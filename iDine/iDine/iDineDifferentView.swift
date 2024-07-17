//
//  iDineDifferentView.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/10.
//

import SwiftUI

struct iDineDifferentView: View {
    
    
    
    var body: some View {
        
        iDineGroupView()
        iDineViewBuilderView()
        iDineCombineSmallView()
        iDineAnyViewcombine()
        Spacer()
    }
}

#Preview {
    iDineDifferentView()
}




struct iDineGroupView: View {
    
    var rossview: some View {
        
        Group {
            if Bool.random(){
                Image("gongrenruzhu")
                    .resizable()
                    .scaledToFit()
                    .background(.orange)
                
                
            }else{
                Text("Placeholder")
                    .font(.title)
            }
        }
        
    }
    
    var body: some View {
        
        VStack {
            Text("Hello, World!")
            
            rossview.frame(width: 300,height: 100)
                .background(.orange)
          
        }
    }
}



struct iDineViewBuilderView: View {
    
    @ViewBuilder var rossview: some View {
        
        if Bool.random(){
            
            Image("gongrenruzhu")
                .resizable()
                .scaledToFit()
                .background(.orange)
            
        }else{
            Text("测试")
                .font(.title)
        }
        
    }
    
    var body: some View {
        
             Text("hello")
                    .font(.largeTitle)
            
                rossview.frame(width: 200,height: 50)
            .background(.gray)
                
    }
}


struct  TossResult: View {
    var body: some View {
        
        if Bool.random(){
            
            Image("gongrenruzhu")
                .resizable()
                .scaledToFit()
                .background(.orange)
            
        }else{
            Text("测试")
                .font(.title)
        }
    }
}

struct iDineCombineSmallView:View {
    var body: some View {
        VStack{
            Text("fouth method")
                .font(.title)
            TossResult().frame(width: 200,height: 100)
        }
    }
}


struct iDineAnyViewcombine: View {
    
    var tossResult: some View {
        if Bool.random(){
            //有性能损耗，不建议使用，建议使用group
            AnyView(Image("gongrenruzhu").resizable().scaledToFit().background(.orange))
        }else{
            AnyView(Text("ceshi").font(.title))
        }
    }
    
    
    var body: some View {
        VStack{
            Text("hello,world")
            tossResult.frame(width: 200,height: 100)
        }
    }
}
