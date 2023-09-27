//
//  NetworkError.swift
//  base
//
//  Created by Руслан Гайфуллин on 27.09.2023.
//

import Foundation

enum NetworkError: Error {
    case noInternet
    case noData
    
    var errorDescription: String {
        switch self {
        case .noInternet:
            return "notInternet".localized
        case .noData:
            return "notData".localized
        }
    }
}
