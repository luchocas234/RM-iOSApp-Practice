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
    ///   - completion: Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void){
        
    }
}
