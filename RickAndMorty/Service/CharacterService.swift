//
//  CharacterService.swift
//  RickAndMorty
//
//  Created by Jackson Matheus dos Santos on 13/12/21.
//

import Foundation
import SwiftUI



struct CharacterService {
    
    enum CharacterServiceError: Error {
            case failed
            case failedToDecode
            case invalidStatusCode
        
    }
    
    func fetchCharacteres() async throws -> [Character]{
        let url = URL(string: "https://rickandmortyapi.com/api/character")!
        
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        
        guard let response = response as? HTTPURLResponse,
              response.statusCode == 200 else {
                  throw CharacterServiceError.invalidStatusCode
              }
        
        
        let decodeData = try JSONDecoder().decode(CharactereServiceResult.self, from: data)
        
        
        return decodeData.results
        
    }
}
