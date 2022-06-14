//
//  LogoutButton.swift
//  SwiftUIMongoDB
//
//  Created by Alex Nagy on 11.06.2022.
//

import SwiftUI
import RealmSwift

/// A button that handles logout requests.
struct LogoutButton: View {
    @State var isLoggingOut = false

    var body: some View {
        if let app = app {
            Button {
                guard let user = app.currentUser else {
                    return
                }
                isLoggingOut = true
                user.logOut { error in
                    if let error = error {
                        print(error.localizedDescription)
                        return
                    }
                    print("Logged out")
                }
            } label: {
                Text("Logout").bold()
            }
            .disabled(app.currentUser == nil || isLoggingOut)
        } else {
            EmptyView()
        }
    }
}

