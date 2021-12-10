//
//  ExtractingPractice.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 07.12.2021.
//

import SwiftUI

struct ExtractingPractice: View {
    @State var number = 0
    
    var body: some View {
        VStack(spacing: 40) {
            mainText
            .font(.title)
            
            buttons
            .font(.title3)
        }
    }
    
    var mainText: some View {
        Text("Current number: \(number)")
    }
    
    var buttons: some View {
        HStack(spacing: 40) {
            Button{
                number -= 1
            } label: {
                Image(systemName: "minus.square")
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color(uiColor: .secondarySystemBackground))
                    )
            }
            
            Button{
                number += 1
            } label: {
                Image(systemName: "plus.square")
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color(uiColor: .secondarySystemBackground))
                    )
            }
        }
    }
}

struct ExtractingPractice_Previews: PreviewProvider {
    static var previews: some View {
        ExtractingPractice()
    }
}
