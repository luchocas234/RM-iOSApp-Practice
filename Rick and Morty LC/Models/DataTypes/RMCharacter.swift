//
//  RMCharacter.swift
//  Rick and Morty LC
//
//  Created by u633168 on 06/02/2023.
//

import Foundation

// MARK: - Character
struct RMCharacter: Codable {
    let id: Int
    let name,species, type: String
    let status: RMCharacterStatus
    let gender: RMCharacterGender
    let origin: RMOrigin
    let location: RMSingleLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
}


