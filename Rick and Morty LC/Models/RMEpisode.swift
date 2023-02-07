//
//  RMEpisode.swift
//  Rick and Morty LC
//
//  Created by u633168 on 06/02/2023.
//

import Foundation

// MARK: - RMEpisode
struct RMEpisode: Codable {
    let id: Int
    let name, airDate, episode: String
    let characters: [String]
    let url: String
    let created: String

    enum CodingKeys: String, CodingKey {
        case id, name
        case airDate = "air_date"
        case episode, characters, url, created
    }
}
