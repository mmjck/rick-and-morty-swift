//
//  CharacterServiceResult.swift
//  RickAndMorty
//
//  Created by Jackson Matheus dos Santos on 13/12/21.
//

import Foundation


struct CharactereServiceResult: Codable {
    let results: [Character]
    
    
}

struct Character: Codable {
    let id: Int
    let name: String
}
