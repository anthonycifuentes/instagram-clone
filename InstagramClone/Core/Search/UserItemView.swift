//
//  UserItemView.swift
//  InstagramClone
//
//  Created by Anthony Cifuentes on 4/07/23.
//

import SwiftUI

struct UserItemView: View {
    var body: some View {
        HStack{
            Image("profile")
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .frame(width: 40, height: 40)
            VStack (alignment: .leading)  {
                Text("@sophiawilliams")
                    .fontWeight(.semibold)
                Text("Sophia Williams")
            }
            .font(.footnote)
            Spacer()
        }
        .padding(.horizontal)
    }
}

struct UserItemView_Previews: PreviewProvider {
    static var previews: some View {
        UserItemView()
    }
}
