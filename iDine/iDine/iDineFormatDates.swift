//
//  iDineFormatDates.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/8.
//

import SwiftUI

struct iDineFormatDates: View {
    var body: some View {
        VStack{
            Text(Date.now...Date.now.addingTimeInterval(60))
            Text(Date.now.addingTimeInterval(600),style: .date)
            Text(Date.now.addingTimeInterval(600),style: .time)
            Text(Date.now.addingTimeInterval(600),style: .relative)
            
            Text(Date.now.addingTimeInterval(600), style: .timer)
            Text(Date.now.addingTimeInterval(600), style: .offset)
        }
    }
}

#Preview {
    iDineFormatDates()
}
