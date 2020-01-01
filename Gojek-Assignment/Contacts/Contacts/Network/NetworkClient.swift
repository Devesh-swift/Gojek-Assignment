//
//  NetworkClient.swift
//  Contacts
//
//  Created by Mahender Reddy Gaddam on 12/14/19.
//  Copyright © 2019 Mahender Reddy Gaddam. All rights reserved.
//

import Foundation

typealias CompletionResult = (Data?, HTTPURLResponse?, Error?) -> Void

protocol NetworkClientProtocol {
    func execute(urlRequest: URLRequest, completion: @escaping CompletionResult)
}

class NetworkClient: NetworkClientProtocol {
    static let shared = NetworkClient(session: URLSession.shared)
    private let session: URLSession

    init(session: URLSession) {
        self.session = session
    }
    
    func execute(urlRequest: URLRequest, completion: @escaping CompletionResult) {
        let task = session.dataTask(with: urlRequest) { (data, response, error) in
            DispatchQueue.main.sync {
                completion(data, response as? HTTPURLResponse, error)
            }
        }
        task.resume()
    }
}
