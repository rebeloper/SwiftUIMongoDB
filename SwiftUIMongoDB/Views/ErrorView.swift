//
//  ErrorView.swift
//  SwiftUIMongoDB
//
//  Created by Alex Nagy on 11.06.2022.
//

import SwiftUI

struct ErrorView: View {
    var error: Error
        
    var body: some View {
        VStack {
            Text("Error opening the realm: \(error.localizedDescription)")
        }
    }
}
