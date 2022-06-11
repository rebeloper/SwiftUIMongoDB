//
//  SwiftUIMongoDBApp.swift
//  SwiftUIMongoDB
//
//  Created by Alex Nagy on 11.06.2022.
//

import SwiftUI
//import RealmSwift
// SP: https://github.com/realm/realm-swift.git

// The Realm app. Set your Atlas Device Sync app ID under Setup/syncAppId.
// If you don't have a Realm app and don't wish to use Atlas Device Sync for now,
// you can change this to:
//let app: RealmSwift.App? = nil
//let app: RealmSwift.App? = RealmSwift.App(id: Setup.syncAppId)

/// The main screen that determines whether to present the SyncContentView or the LocalOnlyContentView.

@main
struct SwiftUIMongoDBApp: /*SwiftUI.*/App {
    var body: some Scene {
        WindowGroup {
            // Using Sync?
//            if let app = app {
//                SyncContentView(app: app)
//            } else {
//                LocalOnlyContentView()
//            }
            HStack {
                Image(systemName: "leaf.fill")
                    .foregroundColor(.green)
                Text("Hello, MongoDB!")
            }
        }
    }
}
