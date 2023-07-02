//
//  PostView.swift
//  InstagramClone
//
//  Created by Anthony Cifuentes on 2/07/23.
//

import SwiftUI

struct PostView: View {
    var body: some View {
        VStack (alignment: .leading) {
            // header
            HStack {
                // profile image
                Image("profile")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                // username
                Text("Sophia Williams")
                    .font(.footnote)
                    .fontWeight(.semibold)
                // icon
                Spacer()
                Image(systemName: "ellipsis")
            }
            .padding(.horizontal)
            
            
            Image("dog")
                .resizable()
                .scaledToFill()
                .frame(maxHeight: 400)
                .clipShape(Rectangle())
            // buttons
            HStack (spacing: 16) {
                Button {
                    print("like")
                } label: {
                    Image(systemName: "heart")
                }
                Button {
                    print("comment")
                } label: {
                    Image(systemName: "bubble.right")
                }
                Button {
                    print("share")
                } label: {
                    Image(systemName: "paperplane")
                }
                Spacer()
                Button {
                    print("comment")
                } label: {
                    Image(systemName: "bookmark")
                }
            }
            .accentColor(.black)
            .padding(.horizontal)
            .padding(.top, 1)
            
            // likes
                Text("100 likes")
                .font(.caption)
                .padding(.leading)
                .padding(.top, 1)
                .fontWeight(.semibold)
            // captios
            
            HStack {
                Text("Anthony Cifuentes ").fontWeight(.semibold) +
                Text("So cute your dog!")
            }
            .font(.caption)
            .padding(.horizontal)
            // timestamp
            Text("6hrs ago")
            .font(.caption)
            .padding(.leading)
            .foregroundColor(.gray)
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}
