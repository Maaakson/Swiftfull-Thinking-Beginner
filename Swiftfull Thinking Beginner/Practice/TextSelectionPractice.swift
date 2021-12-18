//
//  TextSelectionPractice.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 18.12.2021.
//

import SwiftUI

struct TextSelectionPractice: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .textSelection(.enabled)
        }
    }
}

struct TextSelectionPractice_Previews: PreviewProvider {
    static var previews: some View {
        TextSelectionPractice()
    }
}
