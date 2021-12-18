//
//  Materials.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 18.12.2021.
//

import SwiftUI

struct Materials: View {
    let url = URL(string: "https://picsum.photos/1000")
    
    var body: some View {
        VStack {
            Spacer()
            TransparentPopUp
        }
        .background(MainImage)
        .edgesIgnoringSafeArea(.all)
    }
    
    var MainImage: some View {
        AsyncImage(url: url) { loadedImage in
            loadedImage.resizable()
                .scaledToFill()
        } placeholder: {
            ProgressView()
        }
    }
    
    var TransparentPopUp: some View {
        ZStack(alignment: .top) {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: UIScreen.main.bounds.width, height: 250)
                .foregroundStyle(.thinMaterial)
            
            
            VStack {
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 50, height: 5)
                    .foregroundStyle(.black.opacity(0.6))
                    .padding()
                
                Text("Do you like this image?")
                    .font(.title3)
                    .bold()

                
                HStack {
                    Button {
                        
                    } label: {
                        Text("Yes")
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundStyle(.regularMaterial)
                            )
                    }
                    
                    Button {
                        
                    } label: {
                        Text("No")
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundStyle(.regularMaterial)
                            )
                    }
                }
            }
        }
    }
}

struct Materials_Previews: PreviewProvider {
    static var previews: some View {
        Materials()
    }
}
