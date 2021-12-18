//
//  CustomModels.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 17.12.2021.
//

import SwiftUI

struct User: Identifiable {
    let displayName: String
    let nickName: String
    let followerCount: Int
    var isVerified: Bool {
        followerCount > 1000
    }
    let id: String = UUID().uuidString
}

let Users = [
    User(displayName: "Mark", nickName: "markus58", followerCount: 1591),
    User(displayName: "Emily", nickName: "emilylars", followerCount: 8),
    User(displayName: "Jack", nickName: "jackjack", followerCount: 5671),
    User(displayName: "Ketty", nickName: "helloketty", followerCount: 400)
]


struct CustomModels: View {
    var body: some View {
        List {
            ForEach(Users) { user in
                HStack {
                    Circle().frame(width: 45)
                    VStack(alignment: .leading) {
                        Text("\(user.displayName)")
                            .font(.headline)
                        Text("@\(user.nickName)")
                            .foregroundColor(.secondary)
                            .font(.caption)
                    }
                    
                    if user.isVerified {
                        Image(systemName: "checkmark.seal.fill")
                            .foregroundColor(.accentColor)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("\(user.followerCount)")
                            .font(.headline)
                        Text("Followers")
                            .foregroundColor(.secondary)
                            .font(.caption)
                    }
                }
            }
        }
    }
}

struct CustomModels_Previews: PreviewProvider {
    static var previews: some View {
        CustomModels()
    }
}
