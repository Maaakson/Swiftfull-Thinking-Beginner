//
//  GradientPractice.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 04.12.2021.
//

import SwiftUI

struct GradientPractice: View {
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    LinearGradient(
                        colors: [Color.red, Color.blue],
                        startPoint: .trailing,
                        endPoint: .leading)
                )
                .frame(width: 300, height: 250)
            
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    RadialGradient(
                        colors: [Color.red, Color.blue],
                        center: .center,
                        startRadius: 30,
                        endRadius: 100)
                )
                .frame(width: 300, height: 250)
            
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    AngularGradient(
                        colors: [Color.red, Color.blue],
                        center: .bottom,
                        startAngle: Angle(degrees: 180),
                        endAngle: Angle(degrees: 360))
                )
                .frame(width: 300, height: 250)
        }
        .padding()
        .shadow(radius: 10)
    }
}

struct GradientPractice_Previews: PreviewProvider {
    static var previews: some View {
        GradientPractice()
    }
}
