//
//  InfoRow.swift
//  base
//
//  Created by Руслан Гайфуллин on 26.09.2023.
//

import SwiftUI



struct InfoRow: View {
    var superHero: SuperheroElement?
   @Binding var heightForRow: Double
    var body: some View {
        HStack {
//            AsyncImage(url: URL(string: "superHero.images.xs")) { image in
//                image.resizable()
//                    .aspectRatio(contentMode: .fill)
//                    .frame(maxWidth: 30)
//            } placeholder: {
//                ProgressView()
//            }

            Text(superHero?.name ?? "Нет текста")
                .frame(height: Double(heightForRow))
        }
//        .padding(10)
    }
}

