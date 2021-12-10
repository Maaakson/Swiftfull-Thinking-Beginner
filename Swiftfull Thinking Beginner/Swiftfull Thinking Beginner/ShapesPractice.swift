//
//  ShapesPractice.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 04.12.2021.
//

import SwiftUI

struct ShapesPractice: View {
    var body: some View {
        VStack(spacing: 60) {
            Circle()
                .stroke(style: StrokeStyle(lineWidth: 15, lineCap: .round, dash: [30], dashPhase: 90))
                .foregroundColor(.mint)
                .frame(width: 200, height: 200)
            
            Circle()
                .stroke(style: StrokeStyle(lineWidth: 20, dash: [30], dashPhase: 90))
                .fill(Color.purple)
                .frame(width: 200, height: 200)
            
            RoundedRectangle(cornerRadius: 16)
                .trim(from: 0.3  , to: 1)
                .fill(LinearGradient(colors: [.teal, .indigo], startPoint: .leading, endPoint: .trailing))
                .frame(width: 200, height: 200)
        }
        .frame(width: 300, height: .infinity, alignment: .center)
    }
}

struct ShapesPractice_Previews: PreviewProvider {
    static var previews: some View {
        ShapesPractice()
    }
}
