//
//  iDineAttributedString.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/5.
//

import SwiftUI

struct iDineAttributedString: View {
    
    var message : AttributedString {
        var result = AttributedString("hello,hello")
        result.font = .largeTitle
        result.foregroundColor = .red
        result.backgroundColor = .gray
        return result
    }
    
    var message1 : AttributedString {
        var result = AttributedString("Plato jobs")
        result.font = .largeTitle
        result.foregroundColor = .blue
        result.backgroundColor = .white
        result.underlineStyle = Text.LineStyle(pattern: .solid,color: .black)
        return result
    }
    
    var message3 : AttributedString {
        let string = "The letters go up and down"
        var result = AttributedString()
        for (index, letter) in string.enumerated() {
            print(letter)
            var lettersting = AttributedString(String(letter))
            lettersting.baselineOffset = sin(Double(index))*5
            result += lettersting
        }
        result.font = .largeTitle
        return result
    }
    
    //喂文字加入超链接
    var message4: AttributedString {
        var result = AttributedString("baidu")
        result.font = .largeTitle
        result.link = URL(string: "https://www.baidu.com")
        return result
    }
    
    var message5 : AttributedString {
        var result = AttributedString("1990年12月20日")
        result.font = .largeTitle
        result.accessibilitySpeechSpellsOutCharacters = true
        
        return "出生日期是" + result
    }
    
    var dateMessage: AttributedString {
        
        var result = Date.now.formatted(.dateTime.weekday(.wide).day().month(.wide).attributed)
        result.foregroundColor = .secondary
        result.font = .largeTitle
        let weekday = AttributeContainer.dateField(.weekday)
        let weekdayStyle = AttributeContainer.foregroundColor(.red)
        result.replaceAttributes(weekday, with: weekdayStyle)
        return result
    }
    
    var message6 : AttributedString {
        var components = PersonNameComponents()
        components.givenName = "Plato"
        components.familyName = "Jobs"
        var result = components.formatted(.name(style: .long).attributed)
        let familyNamestyle = AttributeContainer.font(.largeTitle)
        let familyName = AttributeContainer.personNameComponent(.familyName)
        result.replaceAttributes(familyName, with: familyNamestyle)
        
        return result
    }
    
    var message7 : AttributedString {
        var amount = Measurement(value: 200.0, unit: UnitLength.kilometers)
        var result = amount.formatted(.measurement(width: .wide).attributed)
        let distanceStyling = AttributeContainer.font(.title)
        let distance = AttributeContainer.measurement(.value)
        result.replaceAttributes(distance, with: distanceStyling)
        return result
    }
    
    
    var body: some View {
        VStack{
            Text(message + message1)
            Text(message3)
            Text(message4)
            Text(message5)
            Text(dateMessage)
            Text (message6)
            Text(message7)
        }
        
    }
}

#Preview {
    iDineAttributedString()
}
