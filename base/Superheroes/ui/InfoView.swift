//
//  InfoView.swift
//  base
//
//  Created by Руслан Гайфуллин on 26.09.2023.
//

import SwiftUI

struct InfoView: View {
    
    @StateObject var viewModel: InfoViewModel
        
   @Binding var heightForRow: Double
    var titleIsOn: Bool
    
//    @State private var presentedAlert: Bool = false
    
    var body: some View {
        
        NavigationView {
            List(viewModel.superheroes, id: \.id) { superhero in
                NavigationLink {
                    InfoDetails(superHero: superhero)
                } label: {
                    InfoRow(superHero: superhero, heightForRow: $heightForRow)
                }
            }
            .toolbar(titleIsOn ? .visible : .hidden, for: .navigationBar)
            .navigationTitle("Superheroes")
            .listStyle(.plain)
            .refreshable {
                viewModel.getSuperheroes()
            }
            
        }.alert(isPresented: $viewModel.presentedAlert) {
            Alert(title: Text(viewModel.errorString))
        }
        
        
    }
}
