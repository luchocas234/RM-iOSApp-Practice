//
//  RMCharacterStatus.swift
//  Rick and Morty LC
//
//  Created by u633168 on 07/02/2023.
//

import Foundation

enum RMCharacterStatus: String,Codable{
    //('Alive', 'Dead' or 'unknown').
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"
}
