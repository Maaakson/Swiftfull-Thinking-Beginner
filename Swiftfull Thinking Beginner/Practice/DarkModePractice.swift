//
//  DarkModePractice.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 16.12.2021.
//

import SwiftUI

struct DarkModePractice: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        VStack(spacing: 35) {
            Text("This is primary Color")
                .foregroundColor(.primary)
            
            Text("This is secondary Color")
                .foregroundColor(.secondary)
            
            Text("This is globally adaptive Color")
                .foregroundColor(Color("BlueSalmon"))
            
            Text("This is locally adaptive Color")
                .foregroundColor(colorScheme == .light ? .mint : .indigo)
        }
    }
}

struct DarkModePractice_Previews: PreviewProvider {
    static var previews: some View {
        DarkModePractice()
            .preferredColorScheme(.light)
        
        DarkModePractice()
            .preferredColorScheme(.dark)
    }
}
