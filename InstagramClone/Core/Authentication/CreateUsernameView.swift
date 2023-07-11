//
//  CreateUsernameView.swift
//  InstagramClone
//
//  Created by Anthony Cifuentes on 11/07/23.
//

import SwiftUI

struct CreateUsernameView: View {
    @State private var username = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        SignUpView(title: "Create username", description: "Pick a username for yout new accout. You can always change it later", inputPlaceholder: "Username", inputValue: username, dismissAction: {dismiss()}, navigationContent: CreatePasswordView())
    }
}

struct CreateUsernameView_Previews: PreviewProvider {
    static var previews: some View {
        CreateUsernameView()
    }
}
