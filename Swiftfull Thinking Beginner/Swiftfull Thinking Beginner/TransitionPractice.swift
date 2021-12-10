//
//  TransitionPractice.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 10.12.2021.
//

import SwiftUI

struct TransitionPractice: View {
    @State var showPopUp = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("Press me") {
                    showPopUp.toggle()
                }
                Spacer()
            }
            if showPopUp {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: UIScreen.main.bounds.width, height: 300)
                    .transition(AnyTransition.scale.animation(.easeInOut))
            }
        }
    }
}

struct TransitionPractice_Previews: PreviewProvider {
    static var previews: some View {
        TransitionPractice()
    }
}
