//
//  TabViewPractice.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 16.12.2021.
//

import SwiftUI

struct TabViewPractice: View {
    @State var selectedViewTag: Int = 1
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)

            TabView(selection: $selectedViewTag) {
                
                Text("Welcome Home")
                    .foregroundColor(.white)
                    .tabItem {
                        Text("Home")
                        Image(systemName: "house.fill")
                    }
                    .tag(0)
                
                SecondScreen(selectedTabIndex: $selectedViewTag)
                    .tabItem {
                        Text("Profile")
                        Image(systemName: "person")
                            .scaleEffect(3)
                    }
                    .tag(1)
            }
            .tabViewStyle(.page)
        }
    }
    
    struct SecondScreen: View {
        @Binding var selectedTabIndex: Int
        
        var body: some View {
            VStack {
                Image("KFC Logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .tabItem {
                        Text("First")
                        Image(systemName: "person.circle.fill")
                }
                
                Button {
                    selectedTabIndex = 0
                } label: {
                    Text("Back")
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color(uiColor: .secondarySystemBackground))
                        )
                }
            }
        }
    }
}

struct TabViewPractice_Previews: PreviewProvider {
    static var previews: some View {
        TabViewPractice()
    }
}
