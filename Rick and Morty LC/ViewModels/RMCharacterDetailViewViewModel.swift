//
//  RMCharacterDetailViewViewModel.swift
//  Rick and Morty LC
//
//  Created by u633168 on 15/02/2023.
//

import Foundation

final class RMCharacterDetailViewViewModel {
    private let character: RMCharacter
    
    init(character: RMCharacter){
        self.character = character
    }
    
    public var title: String{
        return character.name.uppercased()
    }
}
