//
//  TextFieldPractice.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 14.12.2021.
//

import SwiftUI

struct TextFieldPractice: View {
    @State var textFieldData: String = ""
    @State var textForUserName: String = "@currentUsername"
    @State var showAlert: Bool = false
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                
                ImageAndNickname
                                
                MainTextField
                
                SaveButton
                
                Spacer()
            }
            .alert(isPresented: $showAlert, content: alertAction)
        }
    }
    
    var ImageAndNickname: some View {
        VStack {
            Image("Jack Sparrow")
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150)
            .clipShape(Circle())
            
            Text(textForUserName).bold()
        }
    }
    
    var MainTextField: some View {
        TextField("Change nickname", text: $textFieldData)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color(uiColor: .secondarySystemBackground))
            )
            .padding()
    }
    
    var SaveButton: some View {
        Button {
            ChangeNickname()
        } label: {
             Text("Save")
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color(uiColor: .secondarySystemBackground))
                )
        }
    }
    
    func ChangeNickname() {
        if NewNicknameIsCorrect() {
            textForUserName = "@" + textFieldData
        } else {
            showAlert.toggle()
        }
        textFieldData = ""
    }
    
    func NewNicknameIsCorrect() -> Bool {
        return textFieldData.count > 2 && !textFieldData.contains("@")
    }
    
    func alertAction() -> Alert {
        Alert(
            title: Text("Something went wrong"),
            message: Text("Please make sure your nickname conforms to our rules."),
            dismissButton: .default(Text("Ok")))
    }
}

struct TextFieldPractice_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldPractice()
    }
}
