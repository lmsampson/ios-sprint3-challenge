//
//  Pokemon.swift
//  Pokedex
//
//  Created by Lisa Sampson on 5/10/19.
//  Copyright © 2019 Lisa M Sampson. All rights reserved.
//

import Foundation

class Pokemon: Equatable, Codable {
    
    let name: String
    let id: Int
    let abilities: [Ability]
    let types: [PokemonType]
    let sprites: PokemonSprites

    struct PokemonSprites: Equatable, Codable {
        let frontDefault: String
    }
    
    struct Ability: Equatable, Codable {
        let ability: SubAbility
        
        struct SubAbility: Equatable, Codable {
            let name: String
        }
    }
    
    struct PokemonType: Equatable, Codable {
        let type: SubPokemonType
        
        struct SubPokemonType: Equatable, Codable {
            let name: String
        }
    }
    
    static func == (lhs: Pokemon, rhs: Pokemon) -> Bool {
        return lhs.name == rhs.name && lhs.id == rhs.id && lhs.abilities == rhs.abilities && lhs.types == rhs.types && lhs.sprites == rhs.sprites
    }
}
