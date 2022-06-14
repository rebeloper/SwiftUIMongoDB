//
//  ItemDetailsView.swift
//  SwiftUIMongoDB
//
//  Created by Alex Nagy on 11.06.2022.
//

import SwiftUI
import RealmSwift

/// Represents a screen where you can edit the item's name.
struct ItemDetailsView: View {
    @ObservedRealmObject var item: Item

    var body: some View {
        ScrollView {
            Text("Edit name")
                .font(.caption)
                .foregroundColor(.gray)
            TextField("New name", text: $item.name)
        }
        .padding()
        .navigationBarTitle(item.name)
    }
}

