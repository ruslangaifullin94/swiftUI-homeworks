//
//  CacheData.swift
//  base
//
//  Created by Руслан Гайфуллин on 27.09.2023.
//

import Foundation

final class CacheData {
    var cache = NSCache<NSString, SuperheroElement>()
    
    func get(forKey: String) -> SuperheroElement? {
        return cache.object(forKey: NSString(string: forKey))
    }
    
    func set(forKey: String, superhero: SuperheroElement) {
        cache.setObject(superhero, forKey: NSString(string: forKey))
    }
}

extension CacheData {
    private static var cacheData = CacheData()
    static func getCacheData() -> CacheData {
        return cacheData
    }
}
