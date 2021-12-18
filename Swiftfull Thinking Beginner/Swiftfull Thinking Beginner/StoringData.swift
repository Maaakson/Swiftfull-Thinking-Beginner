//
//  StoringData.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 17.12.2021.
//

import SwiftUI

struct Fruit: Identifiable {
    let name: String
    var count: Int
    let id: String = UUID().uuidString
}

class FruitsModel: ObservableObject {
    @Published var fruits: [Fruit] = []
    
    var isLoading: Bool = true
    
    init() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.fruits.append(contentsOf: [
                Fruit(name: "Apple", count: 20),
                Fruit(name: "Orange", count: 10),
                Fruit(name: "Banana", count: 5),
                Fruit(name: "Peach", count: 15),
                Fruit(name: "Lime", count: 9),
                Fruit(name: "Lemon", count: 2)])
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            self.fruits.append(
                Fruit(name: "Secret Fruit", count: 999)
            )
            self.isLoading = false
        }
    }
    
    func removeFruit(at indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func moveFruit(from oldValue: IndexSet, to newValue: Int) {
        fruits.move(fromOffsets: oldValue, toOffset: newValue)
    }
    
    func countFruits() -> Int {
        return fruits.map { $0.count }.reduce(0, +)
    }
}

struct StoringData: View {
    @StateObject var FruitViewModel = FruitsModel()
        
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    mainList
                    
                    statusText
                }
                
                automaticNavigationLink
                
                automaticProgressView
                
            }
            .navigationTitle("Your Fruits")
            .navigationBarItems(trailing: EditButton())
        }
    }
    
    var mainList: some View {
        List {
            if FruitViewModel.fruits.isEmpty == false {
                ForEach(FruitViewModel.fruits) { fruit in
                    HStack {
                        Text(fruit.name)
                        Text("\(fruit.count)")
                    }
                }
                .onMove(perform: FruitViewModel.moveFruit)
                
                .onDelete(perform: FruitViewModel.removeFruit)
            }
        }
    }
    
    var automaticProgressView: some View {
        ProgressView()
            .scaleEffect(1.2)
            .opacity(FruitViewModel.isLoading ? 1 : 0)
    }
    
    var automaticNavigationLink: some View {
        NavigationLink(destination: SecondScreenForFruits(FruitViewModel: FruitViewModel)) {
            Text("Count my Fruits")
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color(uiColor: .white))
                )
        }
        .opacity(FruitViewModel.isLoading ? 0 : 1)
    }
    
    var statusText: some View {
        HStack {
            Text(FruitViewModel.isLoading ? "Fetching Data" : "Downloaded")
            Image(systemName: FruitViewModel.isLoading ? "icloud.and.arrow.down.fill" : "opticaldiscdrive")
        }
    }
}

struct SecondScreenForFruits: View {
    @ObservedObject var FruitViewModel: FruitsModel
    
    var body: some View {
        Text("\(FruitViewModel.countFruits())")
    }
}

struct StoringData_Previews: PreviewProvider {
    static var previews: some View {
        StoringData()
    }
}
