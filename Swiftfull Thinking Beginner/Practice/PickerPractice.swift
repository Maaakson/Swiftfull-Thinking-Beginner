//
//  PickerPractice.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 15.12.2021.
//

import SwiftUI

struct PickerPractice: View {
    @State var numberOfWings: Int = 1
    @State var spicy: Bool = false
    
    let wingBuskets = [2, 5, 8, 12, 22]
    
    //KFC Wing Picker
    
    //Number of wings
    
    //Spicy or Not

    
    
    var body: some View {
        VStack {
            Logo
                                    
            MainPicker
            
            SecondaryPicker
            
            Spacer()
            
            ConfirmButton
            

        }
        .padding(.horizontal)
    }
    
    var Logo: some View {
        Image("KFC Logo")
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .frame(width: 150)
            .padding(.vertical)
    }
    
    var MainPicker: some View {
        VStack {
            Text("How many wings you would like?")
                .lineLimit(1)
                .font(
                    .system(
                        size: 23,
                        weight: .semibold,
                        design: .rounded)
                )
            
            Picker(
                selection: $numberOfWings) {
                    ForEach(wingBuskets, id: \.self) { number in
                        Text("\(number)").tag(number)
                    }
                } label: {
                    Text("")
                }
                .pickerStyle(.segmented)
        }
        .padding(.bottom)
    }
    
    var SecondaryPicker: some View {
        VStack {
            Text("What king of wings would you like?")
                .foregroundColor(Color(uiColor: .darkGray))
                .font(.system(size: 20, weight: .medium, design: .rounded))
            Picker(
                selection: $spicy) {
                    Text("Regular☘️").tag(false)
                    Text("Spicy🔥").tag(true)
                } label: {
                    Text("")
                }
                .pickerStyle(.segmented)

        }
        .padding(.vertical)
    }
    
    var ConfirmButton: some View {
        Button {
            //
        } label: {
             Text("Confirm order")
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color(uiColor: .secondarySystemBackground))
                )
                .font(.subheadline)
        }
    }
}

struct PickerPractice_Previews: PreviewProvider {
    static var previews: some View {
        PickerPractice()
    }
}
