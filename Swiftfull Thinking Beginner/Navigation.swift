//
//  Navigation.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 10.12.2021.
//

import SwiftUI

struct Navigation: View {
    static let descriptions = [
        "Aston Martin": "Aston Martin is a modern, exclusive sports car brand with a unique heritage instantly recognised around the world. Founded in 1913 by Lionel Martin and Robert Bamford, Aston Martin is acknowledged as an iconic global brand synonymous with style, luxury, performance and exclusivity. The British marque fuses the latest technology, time honoured craftsmanship and graceful styling to produce a range of critically acclaimed sports cars. After celebrating its 100th birthday in 2013, Aston Martin is looking firmly forward to its next century of Power, Beauty and Soul.",
        "BMW": "Bayerische Motoren Werke AG, commonly known as Bavarian Motor Works, BMW or BMW AG, is a German automobile, motorcycle and engine manufacturing company founded in 1916. BMW is headquartered in Munich, Bavaria. It also owns and produces Mini cars, and is the parent company of Rolls-Royce Motor Cars. BMW produces motorcycles under BMW Motorrad. In 2012, the BMW Group produced 1,845,186 automobiles and 117,109 motorcycles across all of its brands. BMW is part of the “German Big 3” luxury automakers, along with Audi and Mercedes-Benz, which are the three best-selling luxury automakers in the world.",
        "AUDI": "Audi stands for sporty vehicles, high build quality and progressive design – for “Vorsprung durch Technik.” Founded in 1899 as Horch & Cie. Motorwagen-Werke by August Horch, today the company is among the world’s leading producers of premium cars. The company’s innovation capability is one reason behind its success. Audi has always had a tradition of making automotive history: from quattro permanent all-wheel drive, through lightweight construction based on the aluminum Audi Space Frame, to present-day models capable of automated driving. The first all-electric series-production Audi e-tron has been officially in production at Audi Brussels since September 2018 – on the world’s first carbon-neutral volume automotive production line in the premium segment. Audi plans to offer more than 20 all-electric models by 2025 and aims to push ahead with a significant expansion of the plug-in-hybrid portfolio. "
    ]
    
    let cars = ["Aston Martin", "BMW", "AUDI"]
    
    var body: some View {
        NavigationView {
        
            VStack {
                ForEach(cars.indices) { index in
                    NavigationLink {
                        CarCompanyPreview(name: cars[index])
                    } label: {
                        Text(cars[index])
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(Color(uiColor: .secondarySystemBackground))
                                    .frame(minWidth: 200)
                            )
                    }
                }
            }
            .navigationTitle("Navigation View")
        }
    }
}

struct CarCompanyPreview: View {
    @Environment(\.presentationMode) var presentationMode
    let name: String
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                Image("Logo \(name)")
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 100)
                    .padding()
                
                Spacer()
                
                Image("Car \(name)-1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 300, height: 150)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding()
                
                
                Text(Navigation.descriptions[name] ?? "")
                    .font(.system(size: 20, weight: .thin, design: .serif))
                    .padding()
                
                Spacer()
                
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Back")
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color(uiColor: .secondarySystemBackground))
                        )
                }
            }
            .clipped()
        }
        .navigationBarHidden(true)
        .padding()
    }
}

struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
