//
//  ListPractice.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 10.12.2021.
//

import SwiftUI

struct ListPractice: View {
    @State var fruits: [String] = ["Apple", "Peach", "Plum", "Pear", "Fig"]
    @State var vegetables = ["Potato", "Carrot", "Pumpkin", "Radish", "Garlic"]
    

    var body: some View {
        NavigationView {
            List {
                Section(header:
                    HStack {
                        Text("Fruits")
                    Text("🍑").font(.title)
                    }
                ) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                    }
                    
                    .onDelete { IndexSet in
                        fruits.remove(atOffsets: IndexSet)
                    }
                    
                    .onMove { IndexSet, NewOffset in
                        fruits.move(fromOffsets: IndexSet, toOffset: NewOffset)
                    }
                }
                
                Section(header:
                    HStack {
                        Text("Vegetables")
                        Text("🧑‍🌾").font(.title)
                    }
                ) {
                    ForEach(vegetables, id: \.self) { vegetable in
                        Text(vegetable)
                    }
                    
                    .onDelete { IndexSet in
                        vegetables.remove(atOffsets: IndexSet)
                    }
                    
                    .onMove { IndexSet, NewOffset in
                        vegetables.move(fromOffsets: IndexSet, toOffset: NewOffset)
                    }
                }
            }
            .listStyle(SidebarListStyle())
            .navigationTitle("Shopping List")
            .toolbar {
                ToolbarItem {
                    EditButton()
                }
            }
        }
    }
}

struct ListPractice_Previews: PreviewProvider {
    static var previews: some View {
        ListPractice()
    }
}
