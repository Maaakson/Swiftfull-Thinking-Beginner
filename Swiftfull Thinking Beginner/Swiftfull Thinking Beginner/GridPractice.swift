//
//  GridPractice.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 06.12.2021.
//

import SwiftUI

struct GridPractice: View {
    let colors = [Color.red, Color.orange, Color.yellow, Color.green, Color.blue, Color.purple]
    
    let columns = [
        GridItem(.adaptive(minimum: UIScreen.main.bounds.width / 4))
    ]
    
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ZStack {
                Rectangle()
                    .fill(.white)
                
                VStack {
                    Image("Pirates Logo")
                        .resizable()
                        .scaledToFit()
                        .clipShape(
                            Circle()
                    )
                    
                    Text("Pirates of the Caribbean")
                        .multilineTextAlignment(.center)
                        .font(.system(size: screenWidth / 20, weight: .semibold, design: .serif))
                    
                }
                .padding()
            }
            .frame(width: .infinity, height: screenHeight / 3.7)
            
            LazyVGrid(columns: columns) {
                ForEach(0..<20) { index in
                    Rectangle()
                        .overlay(
                            Image("Scull")
                                .resizable()
                                .foregroundColor(.white)
                                .padding()
                        )
                        .aspectRatio(1/1, contentMode: .fit)
                }
            }
            .padding()
        }
    }
}

struct GridPractice_Previews: PreviewProvider {
    static var previews: some View {
        GridPractice()
            .previewDevice("iPhone 13 Pro Max")
    }
}
