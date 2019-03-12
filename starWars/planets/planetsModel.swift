//
//  planetsModel.swift
//  starWars
//
//  Created by Iva Cicarevic on 3/7/19.
//  Copyright © 2019 Iva Cicarevic. All rights reserved.
//

import Foundation


struct PlanetResult: Codable {
    var name: String
    var rotation_period: String
    var orbital_period: String
    var diameter: String
    var climate: String
    var gravity: String?
    var terrain: String
    var surface_water: String
    var population: String
    var residents: [String]?
    var films: [String]
    var created: String
    var edited: String
    var url: String
}

struct Planet: Codable {
    var count: Int
    var next: String?
    var previous: String?
    var results: [PlanetResult]
}

var planetsUrl = URL(string: "https://swapi.co/api/planets/")!

var planets: Planet?
var allPlanets = [PlanetResult]()
