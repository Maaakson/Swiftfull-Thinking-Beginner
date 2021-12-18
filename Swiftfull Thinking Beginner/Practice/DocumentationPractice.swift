//
//  DocumentationPractice.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 16.12.2021.
//

import SwiftUI

struct DocumentationPractice: View {
    var body: some View {
        Button {
            
        } label: {
            createMonospacedButtonLabel(title: "Press Me")
        }
    }
    
    /// Creates a button label with given title
    ///
    /// This function crates a button label, that has a rounded rectangle as a background, and turns given title into monospaced text
    ///
    /// - Parameter title: String
    /// - Returns: Button Label
    ///
    ///
    func createMonospacedButtonLabel(title: String) -> some View {
        return Text(title).font(.system(.title, design: .monospaced))
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color(uiColor: .secondarySystemBackground))
            )
    }
}

struct DocumentationPractice_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationPractice()
    }
}
