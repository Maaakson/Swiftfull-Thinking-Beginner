//
//  OnTapPrac.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 17.12.2021.
//

import SwiftUI

struct OnTapPrac: View {
    @State var mainColor = Color.black
    
    var body: some View {
        Text("Press me to see the magic")
            .padding()
            .foregroundColor(mainColor)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(mainColor == .black ? Color.white : Color.black)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 3)
                            .foregroundColor(mainColor)
                    )
            )
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color(uiColor: .darkGray))
            )
            .onTapGesture {
                if mainColor == .black { mainColor = .white }
                else { mainColor = .black }
            }
    }
}

struct OnTapPrac_Previews: PreviewProvider {
    static var previews: some View {
        OnTapPrac()
    }
}
