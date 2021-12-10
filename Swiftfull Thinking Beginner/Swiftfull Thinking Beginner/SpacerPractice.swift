//
//  SpacerPractice.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 05.12.2021.
//

import SwiftUI

struct SpacerPractice: View {
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.red)
                .frame(width: 100, height: 50)

            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.green)
                .frame(width: 100, height: 50)
            
            Spacer()
                .frame(width: 2)
                .background(Color.orange)
            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.blue)
                .frame(width: 100, height: 50)
            
            Spacer()
                .frame(width: 2)
                .background(Color.orange)

        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 10).fill(Color.black))
        .padding()
    }
}

struct SpacerPractice_Previews: PreviewProvider {
    static var previews: some View {
        SpacerPractice()
    }
}
