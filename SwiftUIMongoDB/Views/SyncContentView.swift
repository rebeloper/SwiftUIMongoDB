//
//  SyncContentView.swift
//  SwiftUIMongoDB
//
//  Created by Alex Nagy on 11.06.2022.
//

import SwiftUI
import RealmSwift

/// This view observes the Realm app object.
/// Either direct the user to login, or open a realm
/// with a logged-in user.
struct SyncContentView: View {
    // Observe the Realm app object in order to react to login state changes.
    @ObservedObject var app: RealmSwift.App

    var body: some View {
        if let user = app.currentUser {
            OpenSyncedRealmView().environment(\.partitionValue, user.id)
        } else {
            LoginView()
        }
    }
}

