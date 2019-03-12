//
//  StarshipsModel.swift
//  starWars
//
//  Created by Iva Cicarevic on 3/12/19.
//  Copyright © 2019 Iva Cicarevic. All rights reserved.
//

import Foundation


struct StarshipsResult: Codable {
    var name: String
    var model: String
    var manufacturer: String
    var cost_in_credits: String
    var length: String
    var max_atmosphering_speed: String
    var crew: String
    var passengers: String
    var cargo_capacity: String
    var consumables: String
    var hyperdrive_rating: String
    var MGLT: String
    var starship_class: String
    var pilots: [String]?
    var films: [String]
    var created: String
    var edited: String
    var url: String
    
}
struct Starships: Codable {
    var count: Int
    var next: String?
    var previous: String?
    var results: [StarshipsResult]
}

var starshipsUrl = URL(string: "https://swapi.co/api/starships/")!

var starships: Starships?
var allStarships = [StarshipsResult]()

