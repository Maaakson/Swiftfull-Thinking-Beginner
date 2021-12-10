//
//  InitPractice.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 05.12.2021.
//

import SwiftUI

struct InitPractice: View {
    let carName: CarNames
    let name: String
    let price: Int
    
    enum CarNames {
        case Tesla, Aston_Martin
    }
    
    init(car: CarNames) {
        self.carName = car
        
        if car == .Tesla {
            self.name = "Tesla"
            self.price = 33000
        } else {
            self.name = "BMW"
            self.price = 2000
        }
    }
    
    var body: some View {
        VStack {
            Text(name)
                .font(.system(size: 40, weight: .semibold, design: .default))
            Text("Price: \(price)$")
                .font(.system(size: 20, weight: .semibold, design: .default))
            
            CarImage
                .shadow(color: .black.opacity(0.4), radius: 10, x: 10, y: 10)
            
        }
    }
    
    var CarImage: some View {
        Image("Car \(name)-1")
            .resizable()
            .scaledToFill()
            .frame(width: 350, height: 250)
            .clipShape(RoundedRectangle(cornerRadius: 14))
    }
}

struct InitPractice_Previews: PreviewProvider {
    static var previews: some View {
        InitPractice(car: .Tesla)
        InitPractice(car: .Aston_Martin)
    }
}
