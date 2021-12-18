//
//  Stacking.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 05.12.2021.
//

import SwiftUI

struct Stacking: View {
    var body: some View {
        VStack {
            HStack {
                CarView(carImage: Image("Car Aston Martin-1"))
                CarView(carImage: Image("Car Aston Martin-3"))
            }
            
            HStack {
                CarView(carImage: Image("Car Mazda"))
                CarView(carImage: Image("Car Aston Martin-2"))
            }
            
            HStack {
                CarView(carImage: Image("Car BMW-1"))
                CarView(carImage: Image("Car Tesla"))
            }
            
            HStack {
                CarView(carImage: Image("Car Marussia"))
                CarView(carImage: Image("Car BMW-2"))
            }
        }
    }
    
    struct CarView: View {
        let carImage: Image
        
        var body: some View {
            carImage
                .resizable()
                .scaledToFill()
                .frame(width: 180, height: 120)
                .clipShape(
                    RoundedRectangle(cornerRadius: 16)
                )
        }
    }

}

struct Stacking_Previews: PreviewProvider {
    static var previews: some View {
        Stacking()
    }
}
