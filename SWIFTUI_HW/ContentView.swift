//
//  ContentView.swift
//  SWIFTUI_HW
//
//  Created by Александр Мосолов on 02.11.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var titleOn: Bool = true
    @State private var posts: [Post] = {
        [
            Post(title: "RUSSIA", description: "Russia (officially known as the Russian Federation) is the largest country in the world by area.", imageName: "russia", area: 17098242),
            Post(title: "USA", description: "The United States of America (USA) is a federal republic in North America.", imageName: "usa", area: 9833517),
            Post(title: "ITALY", description: "Italy, officially the Italian Republic, is a country in Southern Europe.", imageName: "italy", area: 301340)
        ]
    }()
    
    var body: some View {
        TabView {
            InfoView(titleOn: titleOn, posts: $posts)
                .tabItem {
                    Label("Info", systemImage: "book.fill")
                }
            
            CountryAreaView(posts: posts)
                .tabItem {
                    Label("Country Areas", systemImage: "chart.pie.fill")
                }
            
            SettingsView(titleOn: $titleOn)
                .tabItem {
                    Label("Settings", systemImage: "gearshape.fill")
                }
        }
    }
}
#Preview {
    ContentView()
}
