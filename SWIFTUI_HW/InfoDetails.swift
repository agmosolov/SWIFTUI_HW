//
//  InfoDetails.swift
//  SWIFTUI_HW
//
//  Created by Александр Мосолов on 02.11.2025.
//

import SwiftUI

     struct InfoDetails: View {
         let post: Post

         var body: some View {
            
             ScrollView {
                 
                 VStack(alignment: .leading) {
                     post.image
                         .resizable()
                         .aspectRatio(contentMode: .fit)
                     Text(post.title)
                         .font(.largeTitle)
                         .padding(.bottom, 10)
                     Text(post.description)
                         .font(.body)
                 }
                 .padding()
             }
             .navigationTitle(post.title)
         }
     }
