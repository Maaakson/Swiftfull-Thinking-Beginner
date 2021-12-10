//
//  TernaryOperator.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 08.12.2021.
//

import SwiftUI

struct TernaryOperator: View {
    @State var showMainBody: Bool = true
    
    let columns = [
        GridItem(.adaptive(minimum: UIScreen.main.bounds.width / 4))
    ]
    
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            topBody
            mainBody.opacity(showMainBody ? 1 : 0)
        }
    }
    
    var topBody: some View {
        ZStack(alignment: .top) {
            singleButton
            
            VStack {
                Image("Pirates Logo")
                    .resizable()
                    .scaledToFit()
                    .clipShape(
                        Circle()
                )
                
                Text("Pirates of the Caribbean")
                    .multilineTextAlignment(.center)
                    .font(.system(size: screenWidth / 20, weight: .semibold, design: .serif))
                
            }
            .padding()
        }
        .frame(width: .infinity, height: screenHeight / 3.7)
    }
    
    var mainBody: some View {
        LazyVGrid(columns: columns) {
            ForEach(0..<20) { index in
                Rectangle()
                    .overlay(
                        Image("Scull")
                            .resizable()
                            .foregroundColor(.white)
                            .padding()
                    )
                    .aspectRatio(1/1, contentMode: .fit)
            }
        }
        .padding()
    }
    
    var singleButton: some View {
        Button {
            showMainBody.toggle()
        } label: {
            Spacer()
            Image(systemName: showMainBody ? "trash" : "tray.and.arrow.down")
                .renderingMode(.template)
                .font(.title2)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 16)
                        .foregroundColor(Color(uiColor: .secondarySystemBackground))
                )
        }
        .padding(.horizontal)
    }
}

struct TernaryOperator_Previews: PreviewProvider {
    static var previews: some View {
        TernaryOperator()
    }
}
