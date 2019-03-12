//
//  PlanetSelected.swift
//  starWars
//
//  Created by Iva Cicarevic on 3/7/19.
//  Copyright © 2019 Iva Cicarevic. All rights reserved.
//

import UIKit

class PlanetSelected: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        rotationPeriod.text = "Rotation period: \(detail.rotation_period)"
        orbitalPeriod.text = " Orbital period: \(detail.orbital_period)"
        diameter.text = "Diameter: \(detail.diameter)"
        climate.text = " Climate: \(detail.climate)"
        if detail.gravity != nil {
            gravity.text = "Gravity: \(detail.gravity!)"
        } else {
            gravity.text = "Gravity: /"
        }
        gravity.text = "Gravity: \(detail.gravity!)"
        terrain.text = "Terrain: \(detail.terrain)"
        surfaceWater.text = "Surface water: \(detail.surface_water)"
        population.text = "Population: \(detail.population)"
        
        
    }
    
    private var _detail: PlanetResult!
    
    var detail: PlanetResult {
        get {
            return _detail
        }
        set {
            _detail = newValue
        }
    }

    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var rotationPeriod: UILabel!
    @IBOutlet weak var orbitalPeriod: UILabel!
    @IBOutlet weak var diameter: UILabel!
    @IBOutlet weak var climate: UILabel!
    @IBOutlet weak var gravity: UILabel!
    @IBOutlet weak var terrain: UILabel!
    @IBOutlet weak var surfaceWater: UILabel!
    @IBOutlet weak var population: UILabel!
    
    
    @IBAction func back(_ sender: Any) {
        performSegue(withIdentifier: "back", sender: self)
    }
}
