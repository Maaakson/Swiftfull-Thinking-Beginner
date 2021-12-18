//
//  ProfileView.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 17.12.2021.
//

import SwiftUI

struct ProfileView: View {
    @AppStorage("location") var location: String = "Batumi"
    @AppStorage("favourite_drinks") var favouriteDrinks: String = ""
    @AppStorage("signed_in") var isCurrentUserSignedIn: Bool = false
    
    var body: some View {
        VStack {
            Text("Here's your profile")
                .font(.title)
                .bold()
            
            Text("Favourite drinks: \(favouriteDrinks)")
            
            Text("Location: \(location)")
            
            Button {
                isCurrentUserSignedIn = false
            } label: {
                Text("Sign Out")
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color(uiColor: .secondarySystemBackground))
                    )
            }

        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
