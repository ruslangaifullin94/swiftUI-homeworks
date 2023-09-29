//
//  ContentView.swift
//  base
//
//  Created by Руслан Гайфуллин on 26.09.2023.
//

import SwiftUI

struct ContentView: View {
    
   var viewModelFactory = ViewModelFactory()
    
    @AppStorage("titleIsOn") private var titleOn: Bool = true
    @AppStorage("heightForRow") private var heightForRow: Double = 40.0
    
    var body: some View {
        TabView {
            HelloView()
                .tabItem { Label(
                    title: { Text("Hello") },
                    icon: { Image(systemName: "42.circle") }
                ) }
            InfoView(viewModel: viewModelFactory.makeInfoViewModel(), heightForRow: $heightForRow, titleIsOn: titleOn)
                .tabItem { Label(
                    title: { Text("Superheroes") },
                    icon: { Image(systemName: "figure.run.circle") }
                ) }
            SettingsView(sliderValue: $heightForRow, titleOn: $titleOn)
                .tabItem { Label(
                    title: { Text("Settings") },
                    icon: { Image(systemName: "gear") }
                ) }
        }
    }
}

#Preview {
    ContentView()
}
