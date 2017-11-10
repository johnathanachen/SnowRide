//
//  NetWorking.swift
//  product-hunt
//
//  Created by djchai on 11/1/17.
//  Copyright © 2017 Phyllis Wong. All rights reserved.
//

import Foundation

/*
 Parts of the HTTP Request
 1. Request Method: GET, PUT, DELETE or POST
 2. Header
 3. URL Path
 4. URL Parameters
 5. Body
 */

// #1
enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
    case patch = "PATCH"
}

enum Resource {
    case user
    case trip(userId: Int)
    
    // #1
    func httpMethod() -> HTTPMethod {
        switch self {
        case .user:
            return .get
        case .trip(let userId):
            return .get
        }
    }
    
    // #2
    func header(token: String) -> [String: String] {
        switch self {
        case .user:
            return ["Accept": "application/json",
                    "Content-Type": "application/json",
                    "Authorization": "Bearer \(token)",
                    "Host": "" // need api address
                ]
        case .trip(let userId):
            return ["Accept": "application/json",
                    "Content-Type": "application/json",
                    "Authorization": "Bearer \(token)",
                "Host": "" // need api address
            ]
        }
    }
    
    // #3
    func path() -> String {
        switch self {
        case .user:
            return "" // need API address for users
        case .trip(let userId):
            return "" // need API address for trips
        }
    }
    
    // #4
    func urlParameters() -> [String: String] {
        switch self {
        case .user:
            return [:]
        case .trip(let userId):
            return [:]
        }
    }
    
    // #5
    func body() -> Data? {
        switch self {
        case .user:
            return nil
        case .trip(let userId):
            return nil
        }
    }
}


class Networking {
    let session = URLSession.shared
    let baseURL = "" // need API address
    
    func fetch(resource: Resource, completion: @escaping ([Decodable]) -> ()) {
        let fullURL = baseURL + resource.path()
        var item = NSURLQueryItem()
       
        
        let componets = NSURLComponents(string: fullURL)
        for (key, value) in resource.urlParameters() {
            item = NSURLQueryItem(name: key, value: value)
        }
        
        componets?.queryItems = [item as URLQueryItem]
        
        let url = componets?.url
        var request = URLRequest(url: url!)
        request.allHTTPHeaderFields = resource.header(token: "") // need token
        request.httpMethod = resource.httpMethod().rawValue
        
        session.dataTask(with: request) { (data, res, err) in
            if let data = data {
                switch resource {
                case .user:
                    print("do something")
                case .trip(let userId):
                    print("do something else")
                }
            }
        }.resume()
    }
}




















