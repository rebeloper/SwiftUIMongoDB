//
//  LoginView.swift
//  SwiftUIMongoDB
//
//  Created by Alex Nagy on 11.06.2022.
//

import SwiftUI

/// Represents the login screen. We will have a button to log in anonymously.
struct LoginView: View {
    // Hold an error if one occurs so we can display it.
    @State var error: Error?
    
    // Keep track of whether login is in progress.
    @State var isLoggingIn = false

    var body: some View {
        VStack {
            if isLoggingIn {
                ProgressView()
            }
            if let error = error {
                Text("Error: \(error.localizedDescription)")
            }
            Button {
                login()
            } label: {
                Text("Log in anonymously").bold()
            }
            .buttonStyle(.borderedProminent)
            .disabled(isLoggingIn)
        }
    }
    
    func login() {
        isLoggingIn = true
    }
}


