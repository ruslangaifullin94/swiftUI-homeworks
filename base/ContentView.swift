//
//  ContentView.swift
//  base
//
//  Created by Руслан Гайфуллин on 26.09.2023.
//

import SwiftUI

struct ContentView: View {
    
   var viewModelFactory = ViewModelFactory()
    var body: some View {
        TabView {
            HelloView()
                .tabItem { Label(
                    title: { Text("Hello") },
                    icon: { Image(systemName: "42.circle") }
                ) }
            InfoView(viewModel: viewModelFactory.makeInfoViewModel())
                .tabItem { Label(
                    title: { Text("Superheroes") },
                    icon: { Image(systemName: "figure.run.circle") }
                ) }
            SettingsView()
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
