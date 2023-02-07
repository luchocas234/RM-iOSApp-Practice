//
//  RMRequest.swift
//  Rick and Morty LC
//
//  Created by u633168 on 07/02/2023.
//

import Foundation

/// Object that represent a single API call
final class RMRequest{
    
    private struct Constants{
        static let baseURL = "https://rickandmortyapi.com/api"
    }
    
    private let endpoint: RMEndpoint
    
    private let pathComponents : [String]
    
    private let queryParameters: [URLQueryItem]
    
    /// Constructed url for the api request in string format
    private var urlString: String {
        var string = Constants.baseURL
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        if !queryParameters.isEmpty {
            string += "?"
            // We transform with compactMap to an array with the query formula name=value plus & with joined()
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else{ return nil} //Unwraped that value
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        
        return string
    }
    
    private var url: URL?{
        return URL(string: urlString)
    }
    // MARK: Public
    
    init(endpoint: RMEndpoint, pathComponents: [String], queryParameters: [URLQueryItem]) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}
