//
//  SelectedOneSpecie.swift
//  starWars
//
//  Created by Iva Cicarevic on 3/11/19.
//  Copyright © 2019 Iva Cicarevic. All rights reserved.
//

import UIKit

class SelectedOneSpecie: UIViewController {
    
    @IBOutlet weak var averageHeight: UILabel!
    @IBOutlet weak var skinColors: UILabel!
    @IBOutlet weak var hairColors: UILabel!
    @IBOutlet weak var eyeColors: UILabel!
    @IBOutlet weak var averageLifespan: UILabel!
    @IBOutlet weak var language: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        averageHeight.text = "Average height: \(detail.average_height)"
        skinColors.text = "Skin color: \(detail.skin_colors)"
        hairColors.text = "Hair color: \(detail.hair_colors)"
        eyeColors.text = " Eye color: \(detail.eye_colors)"
        averageLifespan.text = "Average lifespan: \(detail.average_lifespan)"
        language.text = " Language: \(detail.language)"
        
        
        
        let swipe = UISwipeGestureRecognizer(target: self, action: #selector(handleGesture))
        self.view.addGestureRecognizer(swipe)
        swipe.direction = .right
        
    }
    
    @objc func handleGesture() {
        self.performSegue(withIdentifier: "back", sender: self)
    }


    

    private var _detail: SpeciesResults!
    
    var detail: SpeciesResults {
        get {
            return _detail
        }
        set {
            _detail = newValue
        }
    }
}
