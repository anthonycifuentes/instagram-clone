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
            Spacer()
        }
        .padding(.horizontal)
    }
}

struct UserItemView_Previews: PreviewProvider {
    static var previews: some View {
        UserItemView(user: User.MOCK_USERS[0])
    }
}
