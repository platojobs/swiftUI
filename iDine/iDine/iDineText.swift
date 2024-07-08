//
//  iDineText.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/4.
//

import SwiftUI

struct iDineText: View {
    
    var fontDesignText: some View{
        
      return  Text("jobsjobsjobsjobsjobsjobsobsjobsjobsjobsjobsjobsobsjobsjobsjobsjobsjobs")
            .font(.largeTitle)
            .foregroundStyle(.white.gradient)
            .padding()
            .lineSpacing(60)
            .background(.orange)
            .fontDesign(.default)
            .fontWidth(.condensed)
        
    }
    
    var lineLimitText: some View {
        
        return  Text("This is some longer text that is limited to three lines maximum, so anything more than that will cause the text to clip.")
            .lineLimit(3)
        .frame(width: 100)
    }
    
    var lineLimitSeqText:some View {
        
        return Text("This is some longer text that is limited to three lines maximum, so anything more than that will cause the text to clip.This is some longer text that is limited to three lines maximum, so anything more than that will cause the text to clipThis is some longer text that is limited to three lines maximum, so anything more than that will cause the text to clipThis is some longer text that is limited to three lines maximum, so anything more than that will cause the text to clipThis is some longer text that is limited to three lines maximum, so anything more than that will cause the text to clipThis is some longer text that is limited to three lines maximum, so anything more than that will cause the text to clipThis is some longer text that is limited to three lines maximum, so anything more than that will cause the text to clipThis is some longer text that is limited to three lines maximum, so anything more than that will cause the text to clip")
            .lineLimit(3...6)
            .frame(width: .infinity)
        
    }
    
    var truncationModeText: some View {
        
        return Text("This is always two lines,This is always two lines,This is always two lines,This is always two linesThis is always two linesThis is always two linesThis is always two lines,This is always two linesThis is always two lines")
            .lineLimit(2, reservesSpace: true)
            .truncationMode(.middle) //省略在中间
    }
    
    var shadowText: some View {
        
        return Text("swiftUI")
            .bold()
            .font(.system(.largeTitle))
            .fontWeight(.medium)
            .italic()
            .shadow(color: .blue, radius: 1,x: 0,y: 10)
        
    }
    
    var multilineTextAlignmentText: some View {
        return Text("When SwiftUI’s Text views wrap across multiple lines, they align to their leading edge by default. If you want to change that, use the multilineTextAlignment() modifier to specify an alternative, such as .center, or .trailing.")
            .font(.title)
            .multilineTextAlignment(.leading)
            .frame(width: 300)
    }
    
    
    var body: some View {
        
        VStack {
            //fontDesignText
            //lineLimitText
            //lineLimitSeqText
           // truncationModeText
            shadowText
            multilineTextAlignmentText
            
            
            
            
            
            
            

        }
        
        
    }
}

#Preview {
    iDineText()
}
