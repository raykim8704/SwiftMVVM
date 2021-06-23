//
//  Webservice.swift
//  HowCoffee
//
//  Created by KwanghoonKim on 2021/06/23.
//

import Foundation
enum NetworkError:Error{
    case decodingError
    case domainError
    case urlError
}

struct Resource<T:Codable> {
    let url : URL
}

class Webservice{
    func load<T>(resource: Resource<T>, completion: @escaping (Result<T, NetworkError>) -> () ){
        URLSession.shared.dataTask(with: resource.url) { data, response, error in
            guard let data = data, error == nil else{
                completion(.failure(.domainError))
                return
            }
            
            if let result = try? JSONDecoder().decode(T.self, from: data) {
                DispatchQueue.main.async {
                    completion(.success(result))
                }
            }else{
                completion(.failure(.decodingError))
            }
//            completion(.success())
        }.resume()
    }
}
