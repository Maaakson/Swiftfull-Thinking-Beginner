//
//  ContentView.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 04.12.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Hello, world!")
                .font(.largeTitle)
                .italic()
                .bold()
                .underline(true, color: .red)
                .strikethrough(true, color: .purple)
                .padding()
            Text("William Shakespear")
                .font(.system(size: 30, weight: .ultraLight, design: .serif))
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tincidunt nunc pulvinar sapien et ligula ullamcorper malesuada. Dui id ornare arcu odio. Turpis tincidunt id aliquet risus feugiat. ")
                .font(.system(size: 20, weight: .ultraLight, design: .serif))
                .multilineTextAlignment(.center)
            Text("moskow, berlin, los angeles, london".capitalized)
                .font(.system(size: 20, weight: .ultraLight, design: .serif))
                .frame(width: 200, height: 200, alignment: .topLeading)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
