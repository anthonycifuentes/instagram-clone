//
//  ProfileView.swift
//  InstagramClone
//
//  Created by Anthony Cifuentes on 1/07/23.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    var body: some View {

            ScrollView {
                // HEADER
                VStack {
                    // PIC AND STATS
                    HStack(alignment: .center) {
                        Image(user.profileImageUrl ?? "default")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                        Spacer()
                        UserStatView(value: 3, title: "Posts")
                        UserStatView(value: 12, title: "Following")
                        UserStatView(value: 24, title: "Followers")
                    }
                    .padding(.horizontal, 16)
                    // BIO
                    VStack(alignment: .leading)  {
                        if let fullname = user.fullname {
                            Text(fullname)
                                .font(.footnote)
                                .fontWeight(.semibold)
                        }
                        if let bio = user.bio {
                            Text(bio)
                                .font(.footnote)
                        }
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    
                    // ACTION BUTTON
                    Button {
                        
                    } label: {
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360, height: 32)
                            .foregroundColor(.black)
                            .overlay(
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                    }
                    Divider()
                }
                // GRID
                LazyVGrid(columns: gridItems, spacing: 1) {
                    ForEach(0 ... 15, id: \.self) { index in
                        Image("dog")
                            .resizable()
                            .scaledToFill()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 120)
                            .clipped()
                        
                    }
                }
            }
            .navigationTitle(user.username)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button {
                        
                    } label: {
                        Image(systemName: "ellipsis")
                            .foregroundColor(.black)
                    }
                }
            }
        }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: User.MOCK_USERS[0])
    }
}
