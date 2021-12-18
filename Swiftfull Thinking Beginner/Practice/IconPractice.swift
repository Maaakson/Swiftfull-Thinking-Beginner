//
//  IconPractice.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 04.12.2021.
//

import SwiftUI

struct IconPractice: View {
    var body: some View {
        Image(systemName: "calendar.badge.exclamationmark")
            .renderingMode(.original)
            .resizable()
            .scaledToFit()
            .frame(width: 300, height: 300)
            .foregroundColor(.black)
    }
}

struct IconPractice_Previews: PreviewProvider {
    static var previews: some View {
        IconPractice()
    }
}
