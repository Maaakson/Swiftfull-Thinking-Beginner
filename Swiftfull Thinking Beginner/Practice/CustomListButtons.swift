//
//  CustomListButtons.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 18.12.2021.
//

import SwiftUI

struct CustomListButtons: View {
    @State var items = ["iPhone", "iPad", "iMac", "MacBook", "AppleWatch", "AirPods", "AppleTV", "AppleMusic"]
    
    @State var pinnedItems: [String] = []
    @State var archivedItems: [String] = []
    
    var body: some View {
        List {
            Section("Pinned") {
                if pinnedItems.isEmpty {
                    Text("Empty")
                } else {
                    ForEach(pinnedItems, id: \.self) { pinnedItem in
                        Text(pinnedItem)
                    }
                }
            }
            
            Section("Archived") {
                if archivedItems.isEmpty {
                    Text("Empty")
                } else {
                    ForEach(archivedItems, id: \.self) { archivedItem in
                        Text(archivedItem)
                    }
                }
            }
            
            Section("Unsorted") {
                ForEach(items, id: \.self) { item in
                    Text(item)
                        .swipeActions(edge: .leading, allowsFullSwipe: true) {
                            Button {
                                withAnimation {
                                    pinnedItems.append(item)
                                    items.removeAll { currentString in
                                        currentString == item
                                    }
                                }
                            } label: {
                                Image(systemName: "pin")
                            }
                        }
                        .tint(.yellow)
                        .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                            Button {
                                withAnimation {
                                    archivedItems.append(item)
                                    items.removeAll { currentString in
                                        currentString == item
                                    }
                                }
                            } label: {
                                Image(systemName: "square.and.arrow.down")
                            }
                        }
                        .tint(.black)
                }
            }
        }
    }
}

struct CustomListButtons_Previews: PreviewProvider {
    static var previews: some View {
        CustomListButtons()
    }
}
