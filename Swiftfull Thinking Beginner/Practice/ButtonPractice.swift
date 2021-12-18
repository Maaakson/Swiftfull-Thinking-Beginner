//
//  ButtonPractice.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 06.12.2021.
//

import SwiftUI

struct ButtonPractice: View {
    @State var text = "Whats up?"
    
    var body: some View {
        
        VStack(spacing: 20) {
            Text(text)
                .padding(.bottom)
            
            
            Button("Button #1") {
                self.text = "Button #1 was pressed"
            }
            
            Button {
                self.text = "Button #2 was pressed"
            } label: {
                Text("Button #2")
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color(uiColor: .secondarySystemBackground))
                    )
                
            }
            
            Button {
                self.text = "Button #3 was pressed"
            } label: {
                Image(systemName: "folder")
                    .renderingMode(.template)
                    .foregroundColor(.red)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color(uiColor: .secondarySystemBackground))
                    )
            }
            
            Button {
                self.text = "Button #4 was pressed"
            } label: {
                Image(systemName: "heart.fill")
                    .foregroundColor(.red)
                    .padding()
                    .background(
                        Capsule()
                            .stroke(lineWidth: 5)
                            .fill(
                                LinearGradient(colors: [Color.red, Color.orange, Color.yellow, Color.green, Color.blue, Color.purple], startPoint: .top, endPoint: .bottom)
                            )
                    )
            }
        }
        
        
    }
}

struct ButtonPractice_Previews: PreviewProvider {
    static var previews: some View {
        ButtonPractice()
    }
}
