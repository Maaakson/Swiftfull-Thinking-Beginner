//
//  BindingPractice.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 07.12.2021.
//

import SwiftUI

struct BindingPractice: View {
    @State var temporaryText = "Hello, World!"
    
    var body: some View {
        AdvancedTextView(textToUse: $temporaryText)
    }
}

struct AdvancedTextView: View {
    @Binding var textToUse: String
    
    var body: some View {
        Text(textToUse)
            .padding()
            .onTapGesture {
                textToUse = "Hola!"
            }
        
    }
}

struct BindingPractice_Previews: PreviewProvider {
    static var previews: some View {
        BindingPractice()
    }
}
