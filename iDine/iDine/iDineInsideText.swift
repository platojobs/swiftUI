//
//  iDineInsideText.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/8.
//

import SwiftUI

struct iDineInsideText: View {
    
    @State private var ingredients: [String] = []
    
    var body: some View {
        VStack {
//            Text(ingredients,format: .list(type: .and))
//            Button("添加元素 ") {
//                let possibles = ["SwiftUI’s text views are capable of showing dates"," For example, this will print ingredients lists correctly no matter how many items are added:","you can get neatly formatted lists such as “Howard, Josie, and Kingsley”","Dthis is available only in iOS 15, so for iOS 14 and 13 support please see the formatter parameter below"]
//                if let newsIngredients = possibles.randomElement() {
//                    ingredients.append(newsIngredients)
//                }
//                
//            }
//            .background(.gray)
//            .foregroundColor(.white)
//            .font(.largeTitle)
            
            //iDineInsideText2()
            MeasurementView()
            TaskDateFormatView()
        }
    }
}

#Preview {
    iDineInsideText()
}



struct iDineInsideText2: View {
    @State private var rolls = [Int]()
    var body: some View {
        
        VStack {
            Text(rolls,format: .list(memberStyle: .number, type: .and))
            
            Button("Roll Dice") {
                let result = Int.random(in: 1...6)
                rolls.append(result)
            }
            
        }
    }
}


struct MeasurementView: View {
    let measurement =  Measurement(value: 225, unit: UnitLength.centimeters)
    var body: some View {
        Text(measurement,format: .measurement(width: .wide))
        Text(72.3,format: .currency(code: "CAD"))
    }
}

struct TaskDateFormatView: View {
    
    static let taskDateFormat : DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }()
    
    var body: some View {
        Text("日期：\(Date.now,formatter: Self.taskDateFormat)")
    }
}
