//
//  Post.swift
//  base
//
//  Created by Руслан Гайфуллин on 24.09.2023.
//

import Foundation
import SwiftUI

struct Post: Identifiable {
    var id: Int
    let title: String
    let description: String
    let image: Image
}

var posts: [Post] = [
    Post(id: 1,
         title: "vedmak.official",
         description: "Новые кадры со съемок второго сезона легенадраного нашумевшего сериала Ведьмак",
         image: Image(.vedmak)),
    Post(id: 2,
         title: "dzen",
         description: "попробуй новую площадку для твоих статей и публикаций. Легкие настройки монетизации",
         image: Image(.dzen)),
    Post(id: 3,
         title: "valve",
         description:
"""
Студия Valve показала в своем YouTube-канале несколько видеороликов, посвященных игре Counter-Strike 2, которая выйдет летом 2023 года.
По словам разработчиков, геймплей станет динамичнее за счет графических улучшений, реализованных на движке Source 2. Отмечается, что теперь дым в игре выглядит реалистичнее, реагирует на выстрелы и взрывы.
В компании также уточнили, что Source 2 позволил повысить качество освещения и сделать правдоподобную систему рендеринга, создающую реалистичные текстуры.
""",
         image: Image(.counterStrike))
]
