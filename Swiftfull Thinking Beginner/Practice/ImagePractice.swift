//
//  ImagePractice.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 04.12.2021.
//

import SwiftUI

struct ImagePractice: View {
    var body: some View {
        VStack {
            CarView(carImage: Image("Car Marussia"))
                .shadow(radius: 10 )
            Image("The Office")
            //                .renderingMode(.template)
                .resizable()
                .scaledToFit()
                .frame(
                    width: 300,
                    height: 100)
                .foregroundColor(.brown)
        }
    }
    struct CarView: View {
        let carImage: Image
        
        var body: some View {
            carImage
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 200)
                .clipShape(
                    RoundedRectangle(cornerRadius: 16)
                )
        }
    }
}


struct ImagePractice_Previews: PreviewProvider {
    static var previews: some View {
        ImagePractice()
    }
}
