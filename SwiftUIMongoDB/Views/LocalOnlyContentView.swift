//
//  LocalOnlyContentView.swift
//  SwiftUIMongoDB
//
//  Created by Alex Nagy on 11.06.2022.
//

import SwiftUI
import RealmSwift

/// The main content view if not using Sync.
struct LocalOnlyContentView: View {
    // Implicitly use the default realm's objects(Group.self)
    @ObservedResults(Group.self) var groups
    
    var body: some View {
        if let group = groups.first {
            NavigationView {
                ItemsView(group: group)
            }
        } else {
            ProgressView()
                .onAppear {
                    $groups.append(Group())
                }
        }
    }
}

