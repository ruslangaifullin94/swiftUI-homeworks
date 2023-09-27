//
//  ViewModelFactory.swift
//  base
//
//  Created by Руслан Гайфуллин on 27.09.2023.
//

import Foundation


final class ViewModelFactory {
    
    func makeInfoViewModel() -> InfoViewModel {
        let networkManager = CoreNetworkManager()
        let mapper = CoreMapper()
        let infoApiService = InfoApiService(networkManager: networkManager, mapper: mapper)
        let infoViewModel = InfoViewModel(infoApiService: infoApiService)
        return infoViewModel
    }
    
}
