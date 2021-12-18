//
//  PrebuiltButtons.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 18.12.2021.
//

import SwiftUI

struct PrebuiltButtons: View {
    var body: some View {
        VStack(spacing: 30) {
            Button {
                
            } label: {
                Text("Hello, World!")
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color(uiColor: .secondarySystemBackground))
                    )
            }
            
            Button {
                
            } label: {
                Text("Hello, World!")
            }
            .buttonStyle(.bordered)
            .buttonBorderShape(.roundedRectangle)
            .controlSize(.large)
        }
        .padding()
    }
}

struct PrebuiltButtons_Previews: PreviewProvider {
    static var previews: some View {
        PrebuiltButtons()
            .preferredColorScheme(.light)
        PrebuiltButtons()
            .preferredColorScheme(.dark)
    }
}
