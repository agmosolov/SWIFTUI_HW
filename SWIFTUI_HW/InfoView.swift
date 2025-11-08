//
//  InfoView.swift
//  SWIFTUI_HW
//
//  Created by Александр Мосолов on 02.11.2025.
//

import SwiftUI

struct InfoView: View {
    var titleOn: Bool
    
    var body: some View {
        NavigationView {
            List(posts) { post in
                NavigationLink(destination: InfoDetails(post: post)) {
                    InfoRow(post: post)
                }
            }
            .navigationTitle(titleOn ? "Страны Мира" : "")
        }
    }
}
