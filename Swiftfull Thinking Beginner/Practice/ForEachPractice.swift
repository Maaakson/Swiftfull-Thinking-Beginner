//
//  ForEachPractice.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 06.12.2021.
//

import SwiftUI

struct ForEachPractice: View {
    
    let cars = ["Aston Martin", "Ferrari", "BMW", "Mazda", "Genesis"]
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(cars.indices) { index in
                    CarImage(carName: cars[index])
                }
            }
        }
    }
}

struct CarImage: View {
    let carName: String
    
    var body: some View {
        VStack {
            Text("\(carName)")
            .font(.system(size: 22, weight: .light, design: .serif))
            
            Image("Car \(carName)-1")
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 14))
                .shadow(color: .black.opacity(0.4), radius: 10, x: 0, y: 10)
        }
        .padding()
    }
}

struct ForEachPractice_Previews: PreviewProvider {
    static var previews: some View {
        ForEachPractice()
    }
}
