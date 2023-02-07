//
//  RMCharacterGender.swift
//  Rick and Morty LC
//
//  Created by u633168 on 07/02/2023.
//

import Foundation

enum RMCharacterGender: String, Codable {
    //'Female', 'Male', 'Genderless' or 'unknown').
    case female = "Female"
    case male = "Male"
    case genderless = "Genderless"
    case `unknown` = "unknown"
}
