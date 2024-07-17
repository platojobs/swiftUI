//
//  iDineForEachCreateViews.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/10.
//

import SwiftUI

struct iDineForEachCreateViews: View {
    var body: some View {
       
        ScrollView {
            iDineForEachCreateViewsContent()
            iDineForEachView()
        }
    }
}

#Preview {
    iDineForEachCreateViews()
}


struct iDineForEachCreateViewsContent: View {
    var colors:[Color] = [.red,.yellow,.blue]
    var body: some View {
        
        VStack {
            ForEach((1...10).reversed(),id: \.self){ index in
                
                Text("\(index)")
                
            }
            
            ForEach(colors,id: \.self){ color in
               
                Text(color.description.capitalized)
                    .padding()
                    .background(color)
            }
            
            Text("Ready or not, here I come!")
        }
        
    }
}


struct SimpleGameResult {
    let id = UUID()
    let score: Int
}

struct IdentifiableGameResult: Identifiable {
    var id = UUID()
    var score: Int
}


struct iDineForEachView: View {
    
    let results = [
    
      SimpleGameResult(score: 8),
      SimpleGameResult(score: 5),
      SimpleGameResult(score: 12)
    
    ]
    
    let idresults = [
    
        IdentifiableGameResult(score: 8),
        IdentifiableGameResult(score: 5),
        IdentifiableGameResult(score: 12)
    
    ]
    
    
    
    var body: some View {
        
        VStack {
            ForEach(results,id: \.id){ result in
                
                Text("Result:\(result.score)")
                
            }
            ForEach(idresults) { result in
                Text("\(result.score)")
            }
        }
    }
}
