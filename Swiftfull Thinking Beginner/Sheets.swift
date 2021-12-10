//
//  Sheets.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 10.12.2021.
//

import SwiftUI

struct Sheets: View {
    @State var isPresentingSheet: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                Text("Jack Sparrow")
                    .font(.system(size: 25, weight: .semibold, design: .serif))
                Image("Jack Sparrow")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 180)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .shadow(color: Color.black.opacity(0.4), radius: 5, x: 5, y: 5)
                
                Button {
                    isPresentingSheet = true
                } label: {
                    Text("More Info")
                        .font(.title2)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color(uiColor: .secondarySystemBackground))
                        )
                }
                .padding(.top)
            }
            .sheet(isPresented: $isPresentingSheet) {
                DetailedView()
            }
        }
    }
}

struct DetailedView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Image("Jack Sparrow")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(color: Color.black.opacity(0.4), radius: 5, x: 5, y: 5)
                .padding()
            
            Text("Jack Sparrow")
                .font(.system(size: 25, weight: .semibold, design: .serif))
            
            Text("Jack Sparrow was a legendary pirate of the Seven Seas, and the irreverent trickster of the Caribbean. A captain of equally dubious morality and sobriety, a master of self-promotion and self-interest, Jack fought a constant and losing battle with his own best tendencies.")
                .font(.system(size: 22, weight: .light, design: .serif))
                .padding()
            
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Close")
                    .font(.title2)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color(uiColor: .secondarySystemBackground))
                    )
            }
            
            Spacer()
        }
    }
}

struct Sheets_Previews: PreviewProvider {
    static var previews: some View {
        Sheets()
        DetailedView()
    }
}
