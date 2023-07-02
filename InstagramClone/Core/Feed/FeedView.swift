//
//  FeedView.swift
//  InstagramClone
//
//  Created by Anthony Cifuentes on 2/07/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack (spacing: 32) {
                    ForEach(0 ... 10, id: \.self) { post in
                        PostView()
                    }
                }
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading){
                    Image("instagram-logo-black")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 28)
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Image(systemName: "message")
                }
            }
            
        }

    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
