//
//  SliderPractice.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 16.12.2021.
//

import SwiftUI

struct SliderPractice: View {
    @State var cornerRadius: CGFloat = 10
    
    var body: some View {
        VStack {
            HStack {
                Text("Current value: ")
                Text("\(cornerRadius, specifier: "%.2f")")
            }
                 
            RoundedRectangle(cornerRadius: cornerRadius)
                .frame(width: 250, height: 150)
            
            Slider(value: $cornerRadius, in: 10...30, step: 0.01) {
                Text("What's up?")
            } minimumValueLabel: {
                Text("10")
            } maximumValueLabel: {
                Text("30")
            } onEditingChanged: { _ in
                print("")
            }
        }
    }
}

struct SliderPractice_Previews: PreviewProvider {
    static var previews: some View {
        SliderPractice()
    }
}
