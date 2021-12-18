//
//  AnimationRoundTwo.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 09.12.2021.
//

import SwiftUI

struct AnimationRoundTwo: View {
    let colors = [Color.red, Color.orange, Color.yellow, Color.green, Color.blue, Color.purple]
    
    
    @State var isAnimationOn = false
    
    var body: some View {
        VStack {
            Rectangles
            
            Spacer()
            
            PlayButton
        }
    }
    
    var Rectangles: some View {
        VStack {
            Text("Default").font(.title2)
            RoundedRectangle(cornerRadius: 10)
                .fill(
                    LinearGradient(colors: [Color.yellow, Color.orange], startPoint: .leading, endPoint: .trailing)
                )
                .frame(width: isAnimationOn ? 300 : 100, height: 80)
                .animation(.default)
            
            Text("Linear").font(.title2)
            RoundedRectangle(cornerRadius: 10)
                .fill(
                    LinearGradient(colors: [Color.orange, Color.red], startPoint: .leading, endPoint: .trailing)
                )
                .frame(width: isAnimationOn ? 300 : 100, height: 80)
                .animation(.linear)
            
            Text("Ease In").font(.title2)
            RoundedRectangle(cornerRadius: 10)
                .fill(
                    LinearGradient(colors: [Color.green, Color.mint], startPoint: .leading, endPoint: .trailing)
                )
                .frame(width: isAnimationOn ? 300 : 100, height: 80)
                .animation(.easeIn)

            Text("Ease In Out").font(.title2)
            RoundedRectangle(cornerRadius: 10)
                .fill(
                    LinearGradient(colors: [Color.blue, Color.mint], startPoint: .leading, endPoint: .trailing)
                )
                .frame(width: isAnimationOn ? 300 : 100, height: 80)
                .animation(.easeInOut)
            
            Text("Ease Out").font(.title2)
            RoundedRectangle(cornerRadius: 10)
                .fill(
                    LinearGradient(colors: colors, startPoint: .leading, endPoint: .trailing)
                )
                .frame(width: isAnimationOn ? 300 : 100, height: 80)
                .animation(.easeOut)
        }
    }
    
    var PlayButton: some View {
        Button {
            isAnimationOn.toggle()
        } label: {
            Image(systemName: "livephoto.play")
                .font(.largeTitle)
                .padding(10)
                .background(
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color(uiColor: .secondarySystemBackground))
                )
        }
    }
}

struct AnimationRoundTwo_Previews: PreviewProvider {
    static var previews: some View {
        AnimationRoundTwo()
    }
}
