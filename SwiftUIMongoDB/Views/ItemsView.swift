//
//  ItemsView.swift
//  SwiftUIMongoDB
//
//  Created by Alex Nagy on 11.06.2022.
//

import SwiftUI
import RealmSwift

/// The screen containing a list of items in a group. Implements functionality for adding, rearranging,
/// and deleting items in the group.
struct ItemsView: View {
    /// The group is a container for a list of items. Using a group instead of all items
    /// directly allows us to maintain a list order that can be updated in the UI.
    @ObservedRealmObject var group: Group

    var body: some View {
        VStack {
            if group.items.count == 0 {
                Text("Tap **+** to add new Items")
                    .font(.caption)
                    .foregroundColor(.gray)
            } else {
                List {
                    ForEach(group.items) { item in
                        cell(item: item)
                    }
                    .onDelete(perform: $group.items.remove)
                    .onMove(perform: $group.items.move)
                }
            }
        }
        .navigationTitle("Items")
        .toolbar {
            ToolbarItemGroup(placement: .primaryAction) {
                HStack {
                    // Add button to add new items
                    addButton()
                    // Edit button to enable rearranging items
                    EditButton()
                    // A button that handles logout requests.
                    LogoutButton()
                }
            }
        }
    }
}

extension ItemsView {
    
    func cell(item: Item) -> some View {
        NavigationLink {
            ItemDetailsView(item: item)
        } label: {
            Text(item.name)
        }
    }
    
    func addButton() -> some View {
        Button {
            // The bound collection automatically
            // handles write transactions, so we can
            // append directly to it.
            $group.items.append(Item())
        } label: {
            Image(systemName: "plus")
        }
    }
}



