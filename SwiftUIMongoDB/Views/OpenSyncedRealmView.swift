//
//  OpenSyncedRealmView.swift
//  SwiftUIMongoDB
//
//  Created by Alex Nagy on 11.06.2022.
//

import SwiftUI
import RealmSwift

/// This view opens a synced realm.
struct OpenSyncedRealmView: View {
    // Use AsyncOpen to download the latest changes from
    // your Realm app before opening the realm.
    // Leave the `partitionValue` an empty string to get this
    // value from the environment object passed in above.
    @AsyncOpen(appId: Setup.syncAppId, partitionValue: "", timeout: 4000) var asyncOpen
    
    var body: some View {
        switch asyncOpen {
        case .connecting:
            ProgressView()
        case .waitingForUser:
            ProgressView("Waiting for user to log in...")
        case .open(let realm):
            NavigationView {
                ItemsView(group: {
                    if realm.objects(Group.self).count == 0 {
                        try! realm.write {
                            realm.add(Group())
                        }
                    }
                    return realm.objects(Group.self).first!
                }()).environment(\.realm, realm)
            }
        case .progress(let progress):
            ProgressView(progress)
        case .error(let error):
            ErrorView(error: error)
        }
    }
}



