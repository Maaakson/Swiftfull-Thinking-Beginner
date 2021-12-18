//
//  Badges.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 18.12.2021.
//

import SwiftUI

struct Badges: View {
    var body: some View {
        TabView {
            Color.mint
            
            tabItem {
                Image(systemName: "bolt.car")
                Text("Your Tesla")
            }
            .badge(15)
            
            tabItem {
                Image(systemName: "heart")
                Text("Liked")
            }
            .badge("Empty")
        }

    }
}

struct Badges_Previews: PreviewProvider {
    static var previews: some View {
        Badges()
    }
}
