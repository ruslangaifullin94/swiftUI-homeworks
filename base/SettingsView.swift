//
//  SettingsView.swift
//  base
//
//  Created by Руслан Гайфуллин on 26.09.2023.
//

import SwiftUI

struct SettingsView: View {
    
    var colors = ["Red", "Green", "Blue", "White", "Black"]
    
    @State private var selectedColor = "White"
    
    @State private var sliderValue: Double = 0
    
    @State private var isOn: Bool = false
    
    var body: some View {
        Form {
            Section {
                Slider(value: $sliderValue, in: -5...10)
                Toggle("on", isOn: $isOn)
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

#Preview {
    SettingsView()
}
