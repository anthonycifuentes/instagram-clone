//
//  SignInView.swift
//  InstagramClone
//
//  Created by Anthony Cifuentes on 11/07/23.
//

import SwiftUI

struct SignUpView<Content: View>: View {
    var title: String = ""
    var description: String = ""
    var inputPlaceholder: String = ""
    @State var inputValue: String = ""
    var dismissAction: () -> Void
    var navigationContent: Content
    @State var isSecureInput = false;
    
    var body: some View {
        VStack(spacing: 12){
            Text(title)
                .font(.title2)
                .fontWeight(.bold)
            Text(description)
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            if isSecureInput {
                SecureField(inputPlaceholder, text: $inputValue)
                    .modifier(IGTextFieldModifier())
            } else {
                TextField(inputPlaceholder, text: $inputValue)
                    .modifier(IGTextFieldModifier())
            }
            
            NavigationLink(destination: navigationContent){
                Text("Next")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(8)
            }
            .navigationBarBackButtonHidden()
            .padding(.vertical)
            Spacer()
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Image(systemName: "chevron.left")
                            .onTapGesture {
                                dismissAction()
                            }
                    }
                }
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView(title: "Sign In", description: "Enter your email", inputPlaceholder: "", inputValue: "", dismissAction: {}, navigationContent: Text("Next View"))
    }
}
