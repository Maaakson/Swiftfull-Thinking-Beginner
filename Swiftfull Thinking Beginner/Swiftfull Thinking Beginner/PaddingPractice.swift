//
//  PaddingPractice.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 05.12.2021.
//

import SwiftUI

struct PaddingPractice: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            HStack {
                VStack {
                    Text("Jack the Sparrow")
                        .font(.system(size: 30, weight: .semibold, design: .serif))
                    
                    Text("(Pirates of the Caribbean)")
                        .font(.system(size: 13, weight: .thin, design: .serif))
                    
                }
                
                Spacer()
                
                CharacterImage
            }
            
            Text("Jack Sparrow was a legendary pirate of the Seven Seas, and the irreverent trickster of the Caribbean. A captain of equally dubious morality and sobriety, a master of self-promotion and self-interest, Jack fought a constant and losing battle with his own best tendencies.")
                .font(.system(size: 20, weight: .light, design: .serif))
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color(uiColor: .white))
                .shadow(radius: 10)
        )
        .padding(.horizontal)
    }
    var CharacterImage: some View {
        Image("Captain Jack")
            .resizable()
            .scaledToFill()
            .frame(width: 160, height: 120)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(.vertical)
            .shadow(color: .black.opacity(0.3), radius: 10, x: 10, y: 10)
    }
}

struct PaddingPractice_Previews: PreviewProvider {
    static var previews: some View {
        PaddingPractice()
.previewInterfaceOrientation(.portraitUpsideDown)
    }
}
