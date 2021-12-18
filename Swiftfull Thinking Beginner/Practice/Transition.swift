//
//  Transition.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 09.12.2021.
//

import SwiftUI

struct Transition: View {
    @State var showCharacterPopUp: Bool = false
    
    static let screenWidth: CGFloat = 400
    static let screenHeight: CGFloat = 800
    
    static let columns = [
        GridItem(.adaptive(minimum: 90))
    ]
    
    
    let pirates = ["Jack Sparrow", "Hector Barbossa", "Joshamee Gibbs"]
    
    let pirateName = "Jack Sparrow"
    
    
    var body: some View {
        InstagramFeed {
            ZStack(alignment: .center) {
                VStack {
                    topBody
                    mainBody
                }
                
                if showCharacterPopUp {
                    CharacterPopUp
                        .zIndex(1)
                }
            }
        }
        .padding(.horizontal)
    }
    
    var topBody: some View {
        VStack {
            Image("Pirates Logo")
                .resizable()
                .scaledToFit()
                .clipShape(
                    Circle()
                )

            Text("Pirates of the Caribbean")
                .font(.system(size: 20, weight: .semibold, design: .serif))

        }
        .frame(width: 370, height: 200)
    }
    
    var mainBody: some View {
        LazyVGrid(columns: Transition.columns) {
            ForEach(0..<20) { index in
                Rectangle()
                    .frame(width: 105, height: 105)
                    .overlay(
                        Image(index > pirates.count - 1 ? "Scull" : pirates[index])
                            .resizable()
                            .scaledToFill()
                            .frame(width: 90, height: 90)
                            .clipShape(
                                Rectangle()
                            )
                            .foregroundColor(.white)
                    )
                    .onTapGesture {
                        showCharacterPopUp.toggle()
                    }
            }
        }
        .padding(.horizontal)
    }
    
    var CharacterPopUp: some View {
        CharacterView(name: "Jack Sparrow", description: "None")
            .offset(y: 170)
            .transition(.move(edge: .bottom))
            .animation(.default)
    }
}







struct PirateViewTemplate: View {
    let pirateName: String
    let description: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            HStack {
                Text(pirateName)
                    .font(.system(size: 30, weight: .semibold, design: .serif))
                    .multilineTextAlignment(.center)
                
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
        Image(pirateName)
            .resizable()
            .scaledToFill()
            .frame(width: 160, height: 120)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(.vertical)
            .shadow(color: .black.opacity(0.3), radius: 10, x: 10, y: 10)
    }
}






struct Transition_Previews: PreviewProvider {
    static var previews: some View {
        Transition()
            .previewDevice("iPhone 13 mini")
    }
}
