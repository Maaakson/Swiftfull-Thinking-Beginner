//
//  FocuseAndKeyboard.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 18.12.2021.
//

import SwiftUI

struct FocuseAndKeyboard: View {
    //TextField for username
    //SecureTextField for password
    
    @State var username = ""
    @State var password = ""
    @State var textOnScreen = ""
    
    enum inputField: Hashable {
        case username, password
    }
    
    @FocusState var focusedField: inputField?
    
    //Alert username is empty
    //Alert password is empty
    
    @State var alertIsShown: Bool = false
    
    //Button Sign In
    
    
    var body: some View {
        VStack {
            
            Spacer()
            
            if !textOnScreen.isEmpty {
                Text(textOnScreen)
            }
            
            Spacer()
            
            TextField("Your username", text: $username)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color(uiColor: .secondarySystemBackground))
                )
                .focused($focusedField, equals: .username)
            
            
            SecureField("Your password", text: $password)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color(uiColor: .secondarySystemBackground))
                )
                .focused($focusedField, equals: .password)

            
            Spacer()
            
            Button {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                
                if usernameIsValid && passwordIsValid {
                    textOnScreen = "All Correct"
                } else if usernameIsValid && !passwordIsValid {
                    textOnScreen = "Please, add password"
                    focusedField = .password
                    
                } else if !usernameIsValid && passwordIsValid {
                    textOnScreen = "Please, add your username"
                    focusedField = .username
                    
                } else {
                    textOnScreen = "Please, add your username and password"
                    focusedField = .username
                }
                
            } label: {
                Text("Sign In 👽")
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color(uiColor: .secondarySystemBackground))
                    )
            }
        }
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                focusedField = .username
            }
        })
        .padding()
    }
}

struct FocuseAndKeyboard_Previews: PreviewProvider {
    static var previews: some View {
        FocuseAndKeyboard()
    }
}
