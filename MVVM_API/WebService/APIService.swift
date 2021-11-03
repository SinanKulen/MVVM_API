//
//  APIService.swift
//  MVVM_API
//
//  Created by Sinan Kulen on 1.11.2021.
//

import Foundation
import UIKit

class APIService : NSObject {
    
    private let sourceURL = URL(string: "https://www.hackingwithswift.com/samples/petitions-1.json")!
    
    func apiToGetEmployeeData(completion : @escaping (Petitions) -> ()) {
        URLSession.shared.dataTask(with: sourceURL) { (data, urlResponse, error) in
            if let data = data {
                let jsonDecoder = JSONDecoder()
                let empData = try! jsonDecoder.decode(Petitions.self, from: data)
                completion(empData)
            }
        }.resume()
    }
}
