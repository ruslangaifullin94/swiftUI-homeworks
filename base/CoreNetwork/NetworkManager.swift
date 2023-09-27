//
//  NetworkManager.swift
//  base
//
//  Created by Руслан Гайфуллин on 26.09.2023.
//

import Foundation

typealias NetworkManagerCompletion = Result<[SuperheroElement], NetworkError>


protocol NetworkManagerProtocol {
    
    func getRequest(endPoint: EntPoint, completion: @escaping (Result<Data, NetworkError>) -> Void)
    
}

final class CoreNetworkManager {
    
}

extension CoreNetworkManager: NetworkManagerProtocol {
    
    func getRequest(endPoint: EntPoint, completion: @escaping (Result<Data, NetworkError>) -> Void) {
        URLSession.shared.dataTask(with: endPoint.urlRequest) { data, response, error in
            if error != nil {
                return completion(.failure(.noInternet))
            }
            guard let data else {
                return completion(.failure(.noData))
            }
            completion(.success(data))
        }.resume()
    }
    
}
