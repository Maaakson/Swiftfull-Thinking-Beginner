//
//  PermanentStorage.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 17.12.2021.
//

import SwiftUI

struct PermanentStorage: View {
    @AppStorage("name") var userName: String?
    
    var body: some View {
        VStack {
            Text(userName ?? "No name")
            
            Button {
                userName = "Maksim"
            } label: {
                Text("Change name")
                    .padding()
                    .font(.title2)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color(uiColor: .secondarySystemBackground))
                    )
            }
        }
        
    }
}

struct PermanentStorage_Previews: PreviewProvider {
    static var previews: some View {
        PermanentStorage()
    }
}
