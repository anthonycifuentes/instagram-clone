//
//  AddEmailView.swift
//  InstagramClone
//
//  Created by Anthony Cifuentes on 11/07/23.
//

import SwiftUI

struct AddEmailView: View {
    @State private var email = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        SignUpView(title: "Add your email", description: "You'll use this email to sign in to your account", inputPlaceholder: "Email", inputValue: email, dismissAction: {dismiss()}, navigationContent: CreateUsernameView())
    }
}

struct AddEmailView_Previews: PreviewProvider {
    static var previews: some View {
        AddEmailView()
    }
}
