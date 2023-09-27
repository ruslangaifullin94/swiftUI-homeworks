//
//  InfoRow.swift
//  base
//
//  Created by Руслан Гайфуллин on 26.09.2023.
//

import SwiftUI



struct InfoRow: View {
    var superHero: SuperheroElement
    
    var body: some View {
        HStack {
            Text(superHero.name)
        }
    }
}

