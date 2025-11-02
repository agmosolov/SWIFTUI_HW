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
                 post.image
                     .resizable()
                     .frame(width: 50, height: 50)
                     .clipShape(Circle())
                     .shadow(radius: 10)
                
                 Text(post.title)
                     .font(.headline)
                 
                 Spacer()
             }
         }
     }
