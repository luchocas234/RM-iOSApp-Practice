//
//  RMRequest.swift
//  Rick and Morty LC
//
//  Created by u633168 on 07/02/2023.
//

import Foundation

/// Object that represent a single API call
final class RMRequest{
    
    /// API Constants
    private struct Constants{
        static let baseURL = "https://rickandmortyapi.com/api"
    }
    
    /// Desired endpoint
    private let endpoint: RMEndpoint
    
    /// Path components for API, if any
    private let pathComponents : Set<String>
    
    /// Path components for API, if Any
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
    
    /// Computed & constructed url
    private var url: URL?{
        return URL(string: urlString)
    }
    
    /// Desired http method
    public let httpMethod = "GET"
    // MARK: Public
    
    /// Construct request
    /// - Parameters:
    ///   - endpoint: Target endpoint
    ///   - pathComponents: Collection of pathComponents
    ///   - queryParameters: Collection of queryParameters
    init(endpoint: RMEndpoint, pathComponents: Set<String> = [
    ], queryParameters: [URLQueryItem] = [
    ]) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}
