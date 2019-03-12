//
//  ViewController.swift
//  starWars
//
//  Created by Iva Cicarevic on 3/5/19.
//  Copyright © 2019 Iva Cicarevic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.alpha = 0
        
        getPeopleJson()
        getPlanetsJson()
        getFilmsJson()
        getSpeciesJson()
        getVehiclesJson()
        getStarshipsJson()
        
        loadApp()
    }
    
    func loadApp() {
        UIView.animate(withDuration: 12) {
            self.view.alpha = 1
        }
    }
    
    @IBAction func aboutSwapi(_ sender: Any) {
        performSegue(withIdentifier: "toAbout", sender: self)
    }
    @IBAction func goToPeople(_ sender: Any) {
       self.performSegue(withIdentifier: "toPeople", sender: self)
    }
    @IBAction func goToPlanets(_ sender: Any) {
        self.performSegue(withIdentifier: "toPlanets", sender: self)
    }
    @IBAction func goToFIlms(_ sender: Any) {
        self.performSegue(withIdentifier: "toFilms", sender: self)
    }
    @IBAction func goToSpecies(_ sender: Any) {
        self.performSegue(withIdentifier: "toSpecies", sender: self)
    }
    @IBAction func goToVehicles(_ sender: Any) {
         self.performSegue(withIdentifier: "toVehicles", sender: self)
    }
    @IBAction func goToStarships(_ sender: Any) {
         self.performSegue(withIdentifier: "toStarships", sender: self)
    }
}


extension ViewController {
    
    func getPeopleJson() {
        
        if allPeople.count != peoples?.count {
            URLSession.shared.dataTask(with: peopleUrl) {
                (data, response, error) in
                
                if let data = data {
                    let decoder = JSONDecoder()
                    
                    if let people = try? decoder.decode(People.self, from: data) {
                        peoples = people
                        allPeople += (peoples?.results)!
                        
                        if peoples?.next != nil {
                            peopleUrl = URL(string: (peoples?.next)!)!
                            self.getPeopleJson()
                        }
                        print(peoples!)
                    }
                }
            }.resume()
        }
    }
    
    func getPlanetsJson() {
        
        if allPlanets.count != planets?.count {
            URLSession.shared.dataTask(with: planetsUrl) {
                (data, response, error) in
                
                if let data = data {
                    let decoder = JSONDecoder()
                    
                    if let planet = try? decoder.decode(Planet.self, from: data) {
                        planets = planet
                        allPlanets += (planets?.results)!
                        
                        if planets?.next != nil {
                            planetsUrl = URL(string: (planets?.next)!)!
                            self.getPlanetsJson()
                        }
                        print(planets!)
                    }
                }
            }.resume()
        }
    }
    
    func getFilmsJson() {
    
        if allFilms.count != films?.count {
            URLSession.shared.dataTask(with: filmsUrl) {
                (data, response, error) in
            
            if let data = data {
                let decoder = JSONDecoder()
                
                if let film = try? decoder.decode(Films.self, from: data) {
                    films = film
                    allFilms += (films?.results)!
                    
                    if films?.next != nil {
                        filmsUrl = URL(string: (films?.next)!)!
                        self.getFilmsJson()
                        }
                    print(films!)
                    }
                }
            }.resume()
        }
    
    }
    
    func getSpeciesJson() {
        
        if allSpecies.count != species?.count {
            URLSession.shared.dataTask(with: speciesUrl) {
                (data, response, error) in
                
                if let data = data {
                    let decoder = JSONDecoder()
                    
                    if let specie = try? decoder.decode(Species.self, from: data) {
                        species = specie
                        allSpecies += (species?.results)!
                        
                        if species?.next != nil {
                            speciesUrl = URL(string: (species?.next)!)!
                            self.getSpeciesJson()
                        }
                        print(species!)
                    }
                }
            }.resume()
        }
    }
    
    func getVehiclesJson() {
        
        if allVehicles.count != vehicles?.count {
            URLSession.shared.dataTask(with: vehicleUrl) {
                (data, response, error) in
                
                if let data = data {
                    let decoder = JSONDecoder()
                    
                    if let vehicle = try? decoder.decode(Vehicles.self, from: data) {
                        vehicles = vehicle
                        allVehicles += (vehicles?.results)!
                        
                        if vehicles?.next != nil {
                            vehicleUrl = URL(string: (vehicles?.next)!)!
                            self.getVehiclesJson()
                        }
                        print(vehicles!)
                    }
                }
            }.resume()
        }
    }
    
    func getStarshipsJson() {
            
            if allStarships.count != starships?.count {
                URLSession.shared.dataTask(with: starshipsUrl) {
                    (data, response, error) in
                    
                    if let data = data {
                        let decoder = JSONDecoder()
                        
                        if let starship = try? decoder.decode(Starships.self, from: data) {
                            starships = starship
                            allStarships += (starships?.results)!
                            
                            if starships?.next != nil {
                                starshipsUrl = URL(string: (starships?.next)!)!
                                self.getStarshipsJson()
                            }
                            print(starships!)
                        }
                    }
                }.resume()
            }
        }
}


