//
//  AboutVC.swift
//  starWars
//
//  Created by Iva Cicarevic on 3/7/19.
//  Copyright © 2019 Iva Cicarevic. All rights reserved.
//

import UIKit

class AboutVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let swipe = UISwipeGestureRecognizer(target: self, action: #selector(handleGesture))
        
        self.view.addGestureRecognizer(swipe)
        swipe.direction = .right
        
    }
    
    @objc func handleGesture() {
        self.performSegue(withIdentifier: "unwindToMainScene", sender: self)
    }

    

}
