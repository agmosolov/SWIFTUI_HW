//
//  ContentView.swift
//  SWIFTUI_HW
//
//  Created by Александр Мосолов on 02.11.2025.
//

import SwiftUI

struct ContentView: View {
         var body: some View {
             TabView {
                 InfoView()
                     .tabItem {
                         Label("Info", systemImage: "book.fill")
                     }

                 HelloView()
                     .tabItem {
                         Label("Hello", systemImage: "star.fill")
                     }

                 SettingsView()
                     .tabItem {
                         Label("Settings", systemImage: "gearshape.fill")
                     }
             }
         }
     }

#Preview {
    ContentView()
}
