//
//  SettingsView.swift
//  SWIFTUI_HW
//
//  Created by Александр Мосолов on 02.11.2025.
//

import SwiftUI

    struct SettingsView: View {
        @State private var toggleSetting = false
        @State private var selectedOption = 1
        @State private var sliderValue: Double = 0.5

        var body: some View {
            
            Form {
                Section(header: Text("General")) {
                    Toggle(isOn: $toggleSetting) {
                        Text("Enable Feature")
                    }
                }

                Section(header: Text("Options")) {
                    Picker("Select an option", selection: $selectedOption) {
                        Text("Option 1").tag(1)
                        Text("Option 2").tag(2)
                        Text("Option 3").tag(3)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }

                Section(header: Text("Adjustments")) {
                    Slider(value: $sliderValue, in: 0...1) {
                        Text("Adjust value")
                    }
                }
            }
            .navigationTitle("Settings")
        }
    }
