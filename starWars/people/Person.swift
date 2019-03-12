//
//  Person.swift
//  starWars
//
//  Created by Iva Cicarevic on 3/5/19.
//  Copyright © 2019 Iva Cicarevic. All rights reserved.
//

import UIKit

class Person: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        height.text = "Height: \(detail.height)"
        mass.text = "Mass: \(detail.mass)"
        hairColor.text = " Hair color: \(detail.hair_color)"
        skinColor.text = "Skin color: \(detail.skin_color)"
        eyeColor.text = "Eye color: \(detail.eye_color)"
        birthYear.text = " Birth year: \(detail.birth_year)"
        gender.text = " Gender: \(detail.gender)"
        
        
    }
    
    private var _detail: Result!
    
    var detail: Result {
        get {
            return _detail
        }
        set {
            _detail = newValue
        }
    }
  
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var mass: UILabel!
    @IBOutlet weak var hairColor: UILabel!
    @IBOutlet weak var skinColor: UILabel!
    @IBOutlet weak var eyeColor: UILabel!
    @IBOutlet weak var birthYear: UILabel!
    @IBOutlet weak var gender: UILabel!
    
    
    
    @IBAction func back(_ sender: Any) {
        performSegue(withIdentifier: "back", sender: self)
    }
}


