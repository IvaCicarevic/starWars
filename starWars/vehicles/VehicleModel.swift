//
//  VehicleModel.swift
//  starWars
//
//  Created by Iva Cicarevic on 3/11/19.
//  Copyright © 2019 Iva Cicarevic. All rights reserved.
//

import Foundation



struct VehicleResult: Codable {
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
    var vehicle_class: String
    var pilots: [String]?
    var films: [String]
    var created: String
    var edited: String
    var url: String
    
}
struct Vehicles: Codable {
    var count: Int
    var next: String?
    var previous: String?
    var results: [VehicleResult]
}

var vehicleUrl = URL(string: "https://swapi.co/api/vehicles/")!

var vehicles: Vehicles?
var allVehicles = [VehicleResult]()
