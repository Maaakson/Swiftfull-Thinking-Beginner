//
//  ActionSheets.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 14.12.2021.
//

import SwiftUI

struct ActionSheets: View {
    @State var actionScreenPresented: Bool = false
    @State var imageLiked: Bool = false
    
    var body: some View {
        VStack {
            topBody
            userPostedImage
            lowerBody
        }
        .confirmationDialog(Text("Title?"), isPresented: $actionScreenPresented, actions: getConfirmationActions)
    }
    
    var topBody: some View {
        HStack {
            Image("Pirates Logo")
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .frame(width: 50, height: 50)
            
            VStack(alignment: .leading) {
                Text("@username")
                Text("Posted 1 hour ago")
                    .font(.caption)
                    .fontWeight(.light)
                    .foregroundColor(Color(uiColor: .darkGray))
            }
            Spacer()
        }
        .padding(.horizontal)

    }
    
    var userPostedImage: some View {
        Rectangle()
            .frame(width: UIScreen.main.bounds.width)
            .aspectRatio(1/1, contentMode: .fit)
            .overlay {
                Image("Black Pearl")
                    .resizable()
            }
    }
    
    var lowerBody: some View {
        VStack(alignment: .leading) {
            HStack {
                HStack(spacing: -30) {
                    Image("Hector Barbossa")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 35)
                        .clipShape(Circle())

                    
                    Image("Joshamee Gibbs")
                        .resizable()
                        .scaledToFill()
                        .offset(x: 8)
                        .frame(height: 35)
                        .clipShape(Circle())

                    
                    Image("Jack Sparrow")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 35)
                        .clipShape(Circle())
                }
                .frame(width: 130, height: 35)
                
                
                Spacer()
                
                Button {
                    imageLiked.toggle()
                } label: {
                    Image(systemName: imageLiked ? "heart.fill" : "heart")
                        .font(.title3)
                        .foregroundColor(imageLiked ? .red : .accentColor)
                }
                
                Button {
                    actionScreenPresented.toggle()
                } label: {
                    Image(systemName: "ellipsis.circle")
                        .font(.title3)
                }
                
            }
            
            HStack {
                Text("Hector").font(.callout).bold()
                Text("This is amazing").font(.callout)
            }
            .padding(.horizontal)
        }
    }
    
    func getConfirmationActions() -> some View {
        ZStack {
            Button {
                actionScreenPresented = false
            } label: {
                Text("Share")
            }
            
            Button {
                actionScreenPresented = false
                imageLiked.toggle()
            } label: {
                Text("Like")
            }
        }
        
    }
}

struct ActionSheets_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheets()
    }
}
