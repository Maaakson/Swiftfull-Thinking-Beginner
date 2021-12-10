//
//  Frames.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 05.12.2021.
//

import SwiftUI

struct Frames: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.white)
            .frame(width: 200, height: 200, alignment: .trailing)
            .background(Color.blue)
            .frame(width: 230, height: 300, alignment: .bottom)
            .background(Color.black)
            .frame(width: 350, height: 400, alignment: .topLeading)
            .background(Color.red)
    }
}

struct Frames_Previews: PreviewProvider {
    static var previews: some View {
        Frames()
    }
}
