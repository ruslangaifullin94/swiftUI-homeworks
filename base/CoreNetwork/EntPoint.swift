//
//  EntPoint.swift
//  base
//
//  Created by Руслан Гайфуллин on 27.09.2023.
//

import Foundation

enum EntPoint {
    case superheroes
    
    var urlRequest: URLRequest {
        switch self {
        case .superheroes:
            URLRequest(url: URL(string: "https://cdn.jsdelivr.net/gh/akabab/superhero-api@0.3.0/api/all.json")!)
        }
    }
}
