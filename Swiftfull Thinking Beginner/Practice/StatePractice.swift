//
//  StatePractice.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 07.12.2021.
//

import SwiftUI

struct StatePractice: View {
    @State var number = 0
    
    var body: some View {
        VStack(spacing: 40) {
            Text("Current number: \(number)")
                .font(.title)
            
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
            .font(.title3)
        }
    }
}

struct StatePractice_Previews: PreviewProvider {
    static var previews: some View {
        StatePractice()
    }
}
