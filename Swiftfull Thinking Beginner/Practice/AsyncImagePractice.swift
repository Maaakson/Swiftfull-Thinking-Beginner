//
//  AsyncImagePractice.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 18.12.2021.
//

import SwiftUI

struct AsyncImagePractice: View {
    let url = URL(string: "https://picsum.photos/200")
    var body: some View {
        AsyncImage(url: url) { loadedImage in
            loadedImage.resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .cornerRadius(10)
        } placeholder: {
            ProgressView()
        }

    }
}

struct AsyncImagePractice_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImagePractice()
    }
}
