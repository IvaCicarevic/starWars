//
//  StarshipsVC.swift
//  starWars
//
//  Created by Iva Cicarevic on 3/12/19.
//  Copyright © 2019 Iva Cicarevic. All rights reserved.
//

import UIKit

class StarshipsVC: UIViewController {

    
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

extension StarshipsVC: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if starships == nil {
            return 0
        } else {
            return allStarships.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "starshipsCell", for: indexPath) as! StarshipsDataCell
        
        
        cell.updateUI(result: allStarships[indexPath.row])
        
        return cell
    }
}

