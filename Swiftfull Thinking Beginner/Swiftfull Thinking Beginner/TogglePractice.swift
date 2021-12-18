//
//  TogglePractice.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 15.12.2021.
//

import SwiftUI

struct TogglePractice: View {
    @State var isConnected: Bool = false
    @State var isLoading: Bool = false
    @State var showProgressView: Bool = false
    
    var body: some View {
        VStack {
            
            connectionStatus
            
            mainToggle
        }
    }
    
    var mainToggle: some View {
        Toggle("Connect", isOn: $isLoading)
            .tint(.purple)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color(uiColor: .secondarySystemBackground))
            )
            .padding()
            .onChange(of: isLoading) { newValue in
                startTimer()
            }
    }
    
    var connectionStatus: some View {
        HStack {
            Text("Current Status: ")
            ZStack {
                Text(isConnected ? "Online" : "Offline")
                    .opacity(showProgressView ? 0 : 1)
                ProgressView()
                    .opacity(showProgressView ? 1 : 0)

            }
        }
    }
    
    func startTimer() {
        if !isConnected {
            showProgressView.toggle()
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                isConnected.toggle()
                showProgressView.toggle()
            }
        } else {
            isConnected.toggle()
        }
    }
}

struct TogglePractice_Previews: PreviewProvider {
    static var previews: some View {
        TogglePractice()
    }
}
