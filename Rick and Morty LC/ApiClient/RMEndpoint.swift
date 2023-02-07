//
//  RMEndpoint.swift
//  Rick and Morty LC
//
//  Created by u633168 on 07/02/2023.
//

import Foundation

/// Represent unique API endpoint
@frozen enum RMEndpoint: String {
    /// Endpoint to get location info
    case location
    /// Endpoint to get character info
    case character
    /// Endpoint to get episode info
    case episode
}
