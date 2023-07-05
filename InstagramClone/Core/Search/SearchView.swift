//
//  SearchView.swift
//  InstagramClone
//
//  Created by Anthony Cifuentes on 4/07/23.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack (spacing: 12) {
                    ForEach(0 ... 10, id: \.self) { user in
                        UserItemView()
                    }
                }
                .searchable(text: $searchText, prompt: "Search...")
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
