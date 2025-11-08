//
//  InfoRow.swift
//  SWIFTUI_HW
//
//  Created by Александр Мосолов on 02.11.2025.
//

import SwiftUI

struct InfoRow: View {
         let post: Post

         var body: some View {
             HStack {
                 Image(post.imageName)
                     .resizable()
                     .frame(width: 50, height: 50)
                     .clipShape(Circle())
                 Text(post.title)
                     .font(.headline)
             }
         }
     }
