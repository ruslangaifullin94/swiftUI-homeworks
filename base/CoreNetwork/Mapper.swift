//
//  Mapper.swift
//  base
//
//  Created by Руслан Гайфуллин on 27.09.2023.
//

import Foundation

protocol CoreMapperProtocol {
    func map<T: Decodable>(
        from data: Data,
        jsonType: T.Type,
        completion: @escaping (Result<T, NetworkError>) -> Void)
}

final class CoreMapper {
    private lazy var decoder: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = ""
        decoder.dateDecodingStrategy = .formatted(dateFormatter)
        return decoder
    }()
}

extension CoreMapper: CoreMapperProtocol {
    func map<T>(
        from data: Data,
        jsonType: T.Type,
        completion:  @escaping (Result<T, NetworkError>) -> Void) where T : Decodable {
        do {
            let model = try decoder.decode(jsonType.self, from: data)
            completion(.success(model))
        } catch {
            print(error.localizedDescription)
            completion(.failure(.noData))
        }
    }
}
