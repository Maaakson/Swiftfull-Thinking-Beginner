//
//  TextEditorPractice.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 15.12.2021.
//

import SwiftUI

struct TextEditorPractice: View {
    @State var textEditorData: String = ""
    @State var textForBio: String = "This is your bio"
    @State var showAlert: Bool = false
    let maxCharacters = 30
    
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                
                ImageAndNickname
                                
                Spacer()

                MainTextEditor
                
                CharacterCounter
                
                SaveButton
                
                Spacer()
            }
            .alert(isPresented: $showAlert, content: alertAction)
        }
    }
    
    var MainTextEditor: some View {
        TextEditor(text: $textEditorData)
            .frame(width: 250, height: 50)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color(uiColor: .secondarySystemBackground))
            )
    }
    
    var ImageAndNickname: some View {
        VStack {
            Image("Jack Sparrow")
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
            
            Text(textForBio).italic()
        }
    }
    
    var SaveButton: some View {
        Button {
            ChangeBio()
        } label: {
             Text("Save")
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color(uiColor: .secondarySystemBackground))
                )
        }
    }
    
    var CharacterCounter: some View {
        HStack {
            Text("(Current: \(textEditorData.count)")
            Text("Max: \(maxCharacters)")
        }
        .foregroundColor(Color(uiColor: .darkGray))
        .font(.callout)
    }
    
    func ChangeBio() {
        if NewNicknameIsCorrect() {
            textForBio = textEditorData
        } else {
            showAlert.toggle()
        }
        textEditorData = ""
    }
    
    func NewNicknameIsCorrect() -> Bool {
        return textEditorData.count <= maxCharacters
    }
    
    func alertAction() -> Alert {
        Alert(
            title: Text("Something went wrong"),
            message: Text("Please make sure your bio conforms to our rules."),
            dismissButton: .default(Text("Ok")))
    }
}

struct TextEditorPractice_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorPractice()
    }
}
