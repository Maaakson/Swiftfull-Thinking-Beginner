//
//  ColorPractice.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 04.12.2021.
//

import SwiftUI

struct ColorPractice: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color(uiColor: .secondarySystemBackground))
                    .frame(width: 300, height: 230)
                
                Text("Hello, World!")
                    .font(.system(size: 30, weight: .light, design: .serif))
            }
            
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color("BlueSalmon"))
                    .frame(width: 300, height: 230)
                
                Text("Nice to see you!")
                    .font(.system(size: 30, weight: .light, design: .serif))
            }
        }
        .shadow(radius: 10)
    }
}

struct ColorPractice_Previews: PreviewProvider {
    static var previews: some View {
        ColorPractice()
            .preferredColorScheme(.light)
        ColorPractice()
            .preferredColorScheme(.dark)
    }
}
