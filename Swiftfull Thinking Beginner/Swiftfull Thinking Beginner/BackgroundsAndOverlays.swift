//
//  BackgroundsAndOverlays.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 05.12.2021.
//

import SwiftUI

struct BackgroundsAndOverlays: View {
    var body: some View {
        VStack(spacing: 40) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .frame(width: 150, height: 100)
                .background(
                    RoundedRectangle(cornerRadius: 16)
                        .fill(
                            Color(uiColor: .secondarySystemBackground)
                        )
                )
            .shadow(radius: 10)
            
            Text("Hello!")
                .foregroundColor(.white)
                .frame(width: 150, height: 100)
                .background(
                    RoundedRectangle(cornerRadius: 16)
                        .fill(
                            AngularGradient(colors: [Color.red, Color.blue], center: .bottom, startAngle: .degrees(180), endAngle: .degrees(360))
                        )
                )
            .shadow(radius: 10)
            
            HStack {
                Circle()
                    .foregroundColor(Color(uiColor: .secondarySystemBackground))
                    .frame(width: 100, height: 100)
                    .shadow(radius: 16)
                
                    .overlay(
                        Image(systemName: "logo.xbox")
                             .font(.system(size: 85))
                            .background(
                                Circle().foregroundColor(.white)
                            )
                    )
                    .overlay(
                        Circle()
                            .foregroundColor(.red)
                            .frame(width: 25, height: 25)
                            .overlay(
                                Text("25")
                                    .foregroundColor(.white)
                            )
                        ,alignment: .topTrailing
                )
                
                RoundedRectangle(cornerRadius: 16)
                    .fill(
                        LinearGradient(
                            colors: [Color.green.opacity(0.25), Color.green],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: Color.green.opacity(0.4), radius: 16, x: 10, y: 10)
                
                    .overlay(
                        Image(systemName: "gamecontroller")
                            .font(.system(size: 60))
                    )
                    .overlay(
                        Circle()
                            .foregroundColor(.red)
                            .frame(width: 25, height: 25)
                            .shadow(color: Color.green.opacity(0.5), radius: 16, x: 5, y: 5)
                            .overlay(
                                Text("10")
                                    .foregroundColor(.white)
                            )
                            .offset(x: 10, y: 10)
                        ,alignment: .bottomTrailing
                )
            }
        }

    }
}

struct BackgroundsAndOverlays_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundsAndOverlays()
    }
}
