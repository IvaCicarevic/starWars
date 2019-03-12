//
//  SpeciesModel.swift
//  starWars
//
//  Created by Iva Cicarevic on 3/10/19.
//  Copyright © 2019 Iva Cicarevic. All rights reserved.
//

import Foundation


struct SpeciesResults: Codable {
   
    var name: String
    var classification: String
    var designation: String
    var average_height: String
    var skin_colors: String
    var hair_colors: String
    var eye_colors: String
    var average_lifespan: String
    var homeworld: String?
    var language: String
    var people: [String]
    var films: [String]
    var created: String
    var edited: String
    var url: String
    
}


struct Species: Codable {
    var count: Int
    var next: String?
    var previous: String?
    var results: [SpeciesResults]
}


var speciesUrl = URL(string: "https://swapi.co/api/species/")!

var species: Species?
var allSpecies = [SpeciesResults]()

