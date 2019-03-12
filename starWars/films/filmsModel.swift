//
//  filmsModel.swift
//  starWars
//
//  Created by Iva Cicarevic on 3/10/19.
//  Copyright © 2019 Iva Cicarevic. All rights reserved.
//

import Foundation

struct FilmsResults: Codable {
    var title: String
    var episode_id: Int
    var opening_crawl: String
    var director: String
    var producer: String
    var release_date: String
    var characters: [String]
    var planets: [String]
    var starships: [String]
    var vehicles: [String]
    var species: [String]
    var created: String
    var edited: String
    var url: String

}


struct Films: Codable {
    var count: Int
    var next: String?
    var previous: String?
    var results: [FilmsResults]
}


var filmsUrl = URL(string: "https://swapi.co/api/films/")!

var films: Films?
var allFilms = [FilmsResults]()

