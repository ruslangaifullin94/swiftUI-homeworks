//
//  Model.swift
//  base
//
//  Created by Руслан Гайфуллин on 26.09.2023.
//

import Foundation

// MARK: - SuperheroElement
class SuperheroElement: Codable, Identifiable {
    let id: Int
    let name, slug: String
    let powerstats: Powerstats
    let appearance: Appearance
    let biography: Biography
    let work: Work
    let connections: Connections
    let images: Images
}

// MARK: - Appearance
class Appearance: Codable {
    let gender: Gender
    let race: String?
    let height, weight: [String]
    let eyeColor, hairColor: String
}

enum Gender: String, Codable {
    case empty = "-"
    case female = "Female"
    case male = "Male"
}

// MARK: - Biography
class Biography: Codable {
    let fullName, alterEgos: String
    let aliases: [String]
    let placeOfBirth, firstAppearance: String
    let publisher: String?
    let alignment: Alignment
}

enum Alignment: String, Codable {
    case bad = "bad"
    case empty = "-"
    case good = "good"
    case neutral = "neutral"
}

// MARK: - Connections
class Connections: Codable {
    let groupAffiliation, relatives: String
}

// MARK: - Images
class Images: Codable {
    let xs, sm, md, lg: String
}

// MARK: - Powerstats
class Powerstats: Codable {
    let intelligence, strength, speed, durability: Int
    let power, combat: Int
}

// MARK: - Work
class Work: Codable {
    let occupation, base: String
}
