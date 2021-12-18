//
//  AppearDisappear.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 16.12.2021.
//

import SwiftUI

struct AppearDisappear: View {
    @State var onScreenCount = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text("Hello World")
                
                LazyVStack {
                    ForEach(0..<50) {_ in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                onScreenCount += 1
                            }
                    }
                }
            }
            .navigationTitle("On Screen: \(onScreenCount)")
        }
    }
}

struct AppearDisappear_Previews: PreviewProvider {
    static var previews: some View {
        AppearDisappear()
    }
}
