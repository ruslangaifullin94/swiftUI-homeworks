//
//  InfoView.swift
//  base
//
//  Created by Руслан Гайфуллин on 25.09.2023.
//

import SwiftUI



struct InfoDetails: View {
    var superHero: SuperheroElement
    
    var body: some View {
        ScrollView {
            Text(superHero.name)
            AsyncImage(url: URL(string: superHero.images.md))
            Text(superHero.biography.firstAppearance)
        }
        .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
    }
}

