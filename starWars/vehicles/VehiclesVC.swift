//
//  VehiclesVC.swift
//  starWars
//
//  Created by Iva Cicarevic on 3/11/19.
//  Copyright © 2019 Iva Cicarevic. All rights reserved.
//

import UIKit

class VehiclesVC: UIViewController {
    
    
    
    @IBOutlet weak var table: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        table.dataSource = self
        table.delegate = self
        
        self.table.reloadData()
        
        
        let swipe = UISwipeGestureRecognizer(target: self, action: #selector(handleGesture))
        self.view.addGestureRecognizer(swipe)
        swipe.direction = .right
        
    }
    
    @objc func handleGesture() {
        self.performSegue(withIdentifier: "unwindToMainScene", sender: self)
    }
}

extension VehiclesVC: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if vehicles == nil {
            return 0
        } else {
            return allVehicles.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "vehiclesCell", for: indexPath) as! VehiclesDataCell
        
    
        cell.updateUI(result: allVehicles[indexPath.row])
        
        return cell
    }
}


