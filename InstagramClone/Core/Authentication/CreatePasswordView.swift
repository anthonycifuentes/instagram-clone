//
//  CreatePasswordView.swift
//  InstagramClone
//
//  Created by Anthony Cifuentes on 11/07/23.
//

import SwiftUI

struct CreatePasswordView: View {
    @State private var password = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        SignUpView(title: "Create a password", description: "We can remember the password, so you won't need to enter it on your iCloud devices", inputPlaceholder: "Password", inputValue: password, dismissAction: {dismiss()}, navigationContent: CompleteSignUpView(), isSecureInput: true)
    }
}

struct CreatePasswordView_Previews: PreviewProvider {
    static var previews: some View {
        CreatePasswordView()
    }
}
