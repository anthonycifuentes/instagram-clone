//
//  IGTextFielModifier.swift
//  InstagramClone
//
//  Created by Anthony Cifuentes on 11/07/23.
//

import SwiftUI

struct IGTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(8)
            .padding(.horizontal, 24)
    }
}

