//
//  DataInTheEnvironment.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 17.12.2021.
//

import SwiftUI

class DataStorage: ObservableObject {
    @Published var FetchedVegetables = ["Potato", "Carrot", "Garlic", "Cabbage"]
    

}

struct DataInTheEnvironment: View {
    @StateObject var viewModel = DataStorage()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.FetchedVegetables, id: \.self) { vegetable in
                    NavigationLink(vegetable, destination: SecondScreen(chosenVegetable: vegetable))
                }
            }
        }
        .environmentObject(viewModel)
    }
}

struct SecondScreen: View {
    
    let chosenVegetable: String
    
    var body: some View {
        ZStack {
            NavigationLink {
                ThirdScreen()
            } label: {
                Text(chosenVegetable)
                    .font(.title)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color(uiColor: .secondarySystemBackground))
                    )
            }
        }
    }
}

struct ThirdScreen: View {
    @EnvironmentObject var viewModel: DataStorage
    
    var body: some View {
        VStack {
            ForEach(viewModel.FetchedVegetables, id: \.self) { vegetable in
                Text(vegetable)
                    .font(.title)
            }
        }
    }
}

struct DataInTheEnvironment_Previews: PreviewProvider {
    static var previews: some View {
        DataInTheEnvironment()
    }
}
