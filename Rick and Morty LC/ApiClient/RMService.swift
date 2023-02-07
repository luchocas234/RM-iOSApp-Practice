//
//  RMService.swift
//  Rick and Morty LC
//
//  Created by u633168 on 07/02/2023.
//

import Foundation


/// Primary API Service to get Rick and Morty data
final class RMService{
    /// Shared singletone instance
    static let shared = RMService()
    
    /// Privatized constructor
    private init() {}
    
    /// Send Rick and Morty API call
    /// - Parameters:
    ///   - request: Request instance
    ///   - type: The type of object we expect to get back
    ///   - completion: Callback with data or error
    public func execute <T: Codable>(_ request: RMRequest,expecting type: T.Type, completion: @escaping (Result<T,Error>) -> Void){
        
    }
}
