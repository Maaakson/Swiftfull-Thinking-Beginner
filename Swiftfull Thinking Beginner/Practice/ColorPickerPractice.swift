//
//  ColorPickerPractice.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 15.12.2021.
//

import SwiftUI

struct ColorPickerPractice: View {
    @State var selectedColor: Color = Color("BlueSalmon")
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 5)
                RoundedRectangle(cornerRadius: 10).foregroundColor(selectedColor)
            }
            .frame(width: 250, height: 150)
            
            ColorPicker("Choose new color", selection: $selectedColor)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(
                            Color(uiColor:
                                    colorScheme == .dark ?
                                        .tertiarySystemBackground :
                                        .secondarySystemBackground
                                 )
                        )
                )
                .padding()
        }
    }
}

struct ColorPickerPractice_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerPractice()
            .preferredColorScheme(.light)
        ColorPickerPractice()
            .preferredColorScheme(.dark)
    }
}
