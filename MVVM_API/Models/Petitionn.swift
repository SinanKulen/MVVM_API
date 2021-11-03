//
//  Petitionn.swift
//  MVVM_API
//
//  Created by Sinan Kulen on 1.11.2021.
//

import Foundation

struct Petitions : Codable {
    let results : [Petition]
}

struct Petition : Codable {
    let id : String
    let newsTitle : String
    let newsBody : String
    let newsSignatureCount : Int
    
    enum CodingKeys : String, CodingKey {
        case id
        case newsTitle = "title"
        case newsBody = "body"
        case newsSignatureCount = "signatureCount"
    }
}
