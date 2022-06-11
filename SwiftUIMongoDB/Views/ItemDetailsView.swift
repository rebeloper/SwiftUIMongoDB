//
//  ItemDetailsView.swift
//  SwiftUIMongoDB
//
//  Created by Alex Nagy on 11.06.2022.
//

import SwiftUI

/// Represents a screen where you can edit the item's name.
struct ItemDetailsView: View {

    var body: some View {
        ScrollView {
            Text("Edit name")
                .font(.caption)
                .foregroundColor(.gray)
        }
        .padding()
    }
}

