//
//  SettingsView.swift
//  base
//
//  Created by Руслан Гайфуллин on 26.09.2023.
//

import SwiftUI

struct SettingsView: View {
    
    var colors = ["Red", "Green", "Blue", "White", "Black"]
    
    @State private var isChanging: Bool = false
    @State private var selectedColor = "White"
    @Binding var sliderValue: Double
    @Binding var titleOn: Bool
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        Form {
            Section {
                Text(colorScheme == .light ? "LightTheme enabled" : "DarkTheme enabled")
                
                Slider(value: $sliderValue, in: 40...100) {
                    Text("Height row")
                } minimumValueLabel: {
                    Text("40")
                } maximumValueLabel: {
                    Text("100")
                } onEditingChanged: { editing in
                    isChanging = editing
                }
                if isChanging {
                    InfoRow(superHero: nil, heightForRow: $sliderValue)
                }
                Toggle("on", isOn: $titleOn)
                Text(titleOn ? "Title enabled" : "Title disabled")
            }
            Section {
                Picker("Choose background color",  selection: $selectedColor) {
                    ForEach(colors, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.menu)
                Text("You selected: \(selectedColor)")
            }
        }
        
    }
}
