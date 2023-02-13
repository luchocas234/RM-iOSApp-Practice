//
//  RMGetAllCharactersResponse.swift
//  Rick and Morty LC
//
//  Created by u633168 on 09/02/2023.
//

import Foundation

struct RMGetAllCharactersResponse: Codable{
    struct Info: Codable{
        let count : Int?
        let page : Int?
        let next : String?
        let prev: String?
    }
    let info : Info
    let results: [RMCharacter]
}
