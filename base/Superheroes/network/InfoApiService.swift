//
//  InfoApiService.swift
//  base
//
//  Created by Руслан Гайфуллин on 27.09.2023.
//

import Foundation

protocol InfoApiServiceProtocol {
    
    func getSuperheroes(for superheroes: EntPoint, completion: @escaping (Result<[SuperheroElement], NetworkError>) -> Void)
    
}

final class InfoApiService {
    
    private let networkManager: NetworkManagerProtocol
    private let mapper: CoreMapperProtocol
    
    init(networkManager: NetworkManagerProtocol, mapper: CoreMapperProtocol) {
        self.networkManager = networkManager
        self.mapper = mapper
    }
    
}

extension InfoApiService: InfoApiServiceProtocol {
    
    func getSuperheroes(for superheroes: EntPoint, completion: @escaping (Result<[SuperheroElement], NetworkError>) -> Void) {
        networkManager.getRequest(endPoint: superheroes) { [weak self] result in
            switch result {
            case .success(let data):
                self?.mapper.map(from: data, jsonType: [SuperheroElement].self) { result in
                    switch result {
                    case .success(let superheroes):
                        completion(.success(superheroes))
                    case .failure(let error):
                        completion(.failure(error))
                    }
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
}
