//
//  StepperPractice.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 15.12.2021.
//

import SwiftUI

struct StepperPractice: View {
    @State var incrementRatio: CGFloat = 1
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 130 + incrementRatio, height: 80)
            
            Stepper("") {
                incrementRatio += 20
            } onDecrement: {
                if incrementRatio > -100 {
                    incrementRatio -= 20
                }
            }
        }
    }
    
    func incrementWidth(by value: CGFloat) {
        withAnimation {
            incrementRatio += value
        }
    }
}

struct StepperPractice_Previews: PreviewProvider {
    static var previews: some View {
        StepperPractice()
    }
}
