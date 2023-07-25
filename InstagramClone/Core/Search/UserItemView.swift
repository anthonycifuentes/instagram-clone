//
//  UserItemView.swift
//  InstagramClone
//
//  Created by Anthony Cifuentes on 4/07/23.
//

import SwiftUI

struct UserItemView: View {
    var user: User
    var body: some View {
        NavigationLink(value: user) {
            HStack{
                Image(user.profileImageUrl ?? "default")
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 40, height: 40)
                VStack (alignment: .leading)  {
                    Text(user.username)
                        .fontWeight(.semibold)
                    if let fullname = user.fullname {
                        Text(fullname)
                    }
                }
                .font(.footnote)
                .foregroundColor(.black)
                Spacer()
            }
            .padding(.horizontal)
        }
        .navigationDestination(for: User.self, destination: { user in
            ProfileView(user: user)
        })
    }
}

struct UserItemView_Previews: PreviewProvider {
    static var previews: some View {
        UserItemView(user: User.MOCK_USERS[0])
    }
}
