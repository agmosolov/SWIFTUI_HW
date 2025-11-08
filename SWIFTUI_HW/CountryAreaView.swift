//
//  HelloView.swift
//  SWIFTUI_HW
//
//  Created by Александр Мосолов on 02.11.2025.
//

import SwiftUI

struct CountryAreaView: View {
        let posts: [Post]

        var body: some View {
            NavigationView {
                PieChartView(posts: posts)
                    .navigationTitle("Country Areas")
                    .padding()
            }
        }
    }

    struct CountryAreaView_Previews: PreviewProvider {
        static var previews: some View {
            CountryAreaView(posts: posts)
        }
    }
