//
//  InfoView.swift
//  SWIFTUI_HW
//
//  Created by Александр Мосолов on 02.11.2025.
//

import SwiftUI

struct InfoView: View {
    var titleOn: Bool
    @Binding var posts: [Post]

    var body: some View {
        NavigationView {
            List {
                ForEach(posts) { post in
                    NavigationLink(destination: InfoDetails(post: post)) {
                        InfoRow(post: post)
                    }
                }
                .onDelete(perform: deleteItems)
            }
            .navigationTitle(titleOn ? "Knowledge Base" : "")
            .toolbar {
                EditButton()
            }
        }
    }

    func deleteItems(at offsets: IndexSet) {
        posts.remove(atOffsets: offsets)
    }
}
