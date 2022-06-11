//
//  ItemsView.swift
//  SwiftUIMongoDB
//
//  Created by Alex Nagy on 11.06.2022.
//

import SwiftUI

/// The screen containing a list of items in a group. Implements functionality for adding, rearranging,
/// and deleting items in the group.
struct ItemsView: View {
    /// The group is a container for a list of items. Using a group instead of all items
    /// directly allows us to maintain a list order that can be updated in the UI.

    var body: some View {
        VStack {
            
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
    
    func addButton() -> some View {
        Button {
            // The bound collection automatically
            // handles write transactions, so we can
            // append directly to it.
        } label: {
            Image(systemName: "plus")
        }
    }
}



