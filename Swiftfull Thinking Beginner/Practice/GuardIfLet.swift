//
//  GuardIfLet.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 16.12.2021.
//

import SwiftUI

struct GuardIfLet: View {
    @State var isLoading: Bool = false
    @State var userID: String? = nil
    var userData = ""
    
    var body: some View {
        NavigationView {
            VStack {

                Spacer()
                
                ProgressView()
                    .opacity(isLoading ? 1 : 0)
                    .scaleEffect(2)
                    .padding()
                    .padding(.top)
                
                Text(getUserData())
                    .font(.title3)
                
                Spacer()
                
                
                Button {
                    loadData()
                } label: {
                    Text("Load Data")
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color(uiColor: .secondarySystemBackground))
                        )
                }
            }
            .padding()
            .navigationTitle("Your data")
        }
    }
    
    func loadData() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            isLoading = false
            userID = "@USERID"
        }
    }
    
    func getUserData() -> String {
        guard let userID = userID else {
            return "Your data is empty. PLS enter your ID"
        }
        
        return "Data for id: \(userID)"
    }
}

struct GuardIfLet_Previews: PreviewProvider {
    static var previews: some View {
        GuardIfLet()
    }
}
