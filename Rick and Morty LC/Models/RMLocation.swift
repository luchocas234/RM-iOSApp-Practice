//
//  RMLocation.swift
//  Rick and Morty LC
//
//  Created by u633168 on 06/02/2023.
//

import Foundation

// MARK: - RMLocation
struct RMLocation: Codable {
    let id: Int
    let name, type, dimension: String
    let residents: [String]
    let url: String
    let created: String
}
