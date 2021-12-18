//
//  ContextMenuPractice.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 14.12.2021.
//

import SwiftUI

struct ContextMenuPractice: View {
    @State var textToShow: String = "Hello, World!"
    var body: some View {
        VStack {
            Text(textToShow)
                .padding()
                .frame(minWidth: 150)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color(uiColor: .secondarySystemBackground))
                )
            .contextMenu(menuItems: getMenuItems)
            
            Text("(press and hold)")
                .font(.footnote)
                .foregroundColor(Color(uiColor: .darkGray))
        }
        
    }
    
    func getMenuItems() -> some View {
        Group {
            Button {
                    textToShow = "Amazing!"
                } label: {
                    HStack {
                        Text("Amazing!")
                        Image(systemName: "flame.fill")
                    }
            }
            
            Button {
                textToShow = "Hello, World!"
            } label: {
                HStack {
                    Text("Hello, World!")
                    Image(systemName: "hand.wave")
                }
            }
        }
    }
}

struct ContextMenuPractice_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuPractice()
    }
}
