//
//  ScrollViewPractice.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 06.12.2021.
//

import SwiftUI

struct ScrollViewPractice: View {
    let characters = ["Jack Sparrow", "Hector Barbossa", "Joshamee Gibbs"]
    
    let descriptions = [
        "Jack Sparrow was a legendary pirate of the Seven Seas, and the irreverent trickster of the Caribbean. A captain of equally dubious morality and sobriety, a master of self-promotion and self-interest, Jack fought a constant and losing battle with his own best tendencies.",
        "Hector Barbossa was a legendary and ferocious pirate of the Caribbean and Pirate Lord of the Caspian Sea. A captain of treacherous morality, a vile pirate returned from the dead, and a master of his own fate, Barbossa was the ultimate survivor.",
        "Joshamee Gibbs was the longtime comrade and devoted First Mate of Captain Jack Sparrow. Teller of tales, handy with a bottle, this veteran sea dog was truly a skillful sailor who cleverly navigated his way through many deadly situations."
    ]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ForEach(characters.indices) { index in
                    CharacterView(name: characters[index], description: descriptions[index])
                        .padding(.vertical)
                }
            }
        }
    }
}

struct CharacterView: View {
    let name: String
    let description: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            HStack {
                VStack {
                    Text(name)
                        .font(.system(size: 30, weight: .semibold, design: .serif))
                        .multilineTextAlignment(.center)

                    
                    Text("(Pirates of the Caribbean)")
                        .font(.system(size: 13, weight: .thin, design: .serif))
                    
                }
                
                Spacer()
                
                CharacterImage
            }
            
            Text(description)
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
        Image(name)
            .resizable()
            .scaledToFill()
            .frame(width: 160, height: 120)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(.vertical)
            .shadow(color: .black.opacity(0.3), radius: 10, x: 10, y: 10)
    }
}

struct ScrollViewPractice_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewPractice()
    }
}
