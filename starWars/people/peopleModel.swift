//
//  peopleModel.swift
//  starWars
//
//  Created by Iva Cicarevic on 3/5/19.
//  Copyright © 2019 Iva Cicarevic. All rights reserved.
//

import Foundation


struct Result: Codable {
    var name: String
    var height: String
    var mass: String
    var hair_color: String
    var skin_color: String
    var eye_color: String
    var birth_year: String
    var gender: String
    var homeworld: String
    var films: [String]
    var species: [String]
    var vehicles: [String]?
    var starships: [String]?
    var created: String
    var edited: String
    var url: String
    
}
struct People: Codable {
    var count: Int
    var next: String?
    var previous: String?
    var results: [Result]
}

var peopleUrl = URL(string: "https://swapi.co/api/people/")!

var peoples: People?
var allPeople = [Result]()
