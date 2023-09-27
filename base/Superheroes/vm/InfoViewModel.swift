//
//  InfoViewModel.swift
//  base
//
//  Created by Руслан Гайфуллин on 27.09.2023.
//

import Foundation
import Combine

protocol InfoViewModelProtocol {
    
    var superheroes: [SuperheroElement] {get set}
    func getSuperheroes()
    
}

final class InfoViewModel: ObservableObject {
    
    @Published var presentedAlert: Bool = false
    @Published var errorString: String = ""
        
    @Published var superheroes: [SuperheroElement] = []
    
    private let infoApiService: InfoApiServiceProtocol
    
    init(infoApiService: InfoApiServiceProtocol) {
        self.infoApiService = infoApiService
        getSuperheroes()
    }
    
}

extension InfoViewModel: InfoViewModelProtocol {
    
    func getSuperheroes() {
        
        infoApiService.getSuperheroes(for: .superheroes) { [weak self] result in
            guard let self else { return }
            switch result {
            case .success(let superheroes):
                DispatchQueue.main.async {
                    self.superheroes = superheroes
                }
            case .failure(let error):
                switch error {
                case .noInternet:
                    DispatchQueue.main.async {
                        self.presentedAlert = true
                        self.errorString = error.errorDescription
                        print(error.errorDescription)
                    }
                case .noData:
                    DispatchQueue.main.async {
                        print(error.errorDescription)
                        self.presentedAlert = true
                        self.errorString = error.errorDescription
                    }
                }
            }
        }
    }
    
}
