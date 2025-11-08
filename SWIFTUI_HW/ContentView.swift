//
//  ContentView.swift
//  SWIFTUI_HW
//
//  Created by Александр Мосолов on 02.11.2025.
//

import SwiftUI

     struct ContentView: View {
         @AppStorage("titleOn") private var titleOn: Bool = true

         var body: some View {
             TabView {
                 InfoView(titleOn: titleOn)
                     .tabItem {
                         Label("Info", systemImage: "book.fill")
                     }

                 HelloView()
                     .tabItem {
                         Label("Hello", systemImage: "star.fill")
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
