//
//  PostData.swift
//  H4Q3R
//
//  Created by Marcus Daquis on 6/7/21.
//

import Foundation

struct Result: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let title: String
    let points: Int
    let url: String?
    
}
