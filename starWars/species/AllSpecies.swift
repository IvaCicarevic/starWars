//
//  AllSpecies.swift
//  starWars
//
//  Created by Iva Cicarevic on 3/10/19.
//  Copyright © 2019 Iva Cicarevic. All rights reserved.
//

import UIKit

class AllSpecies: UIViewController {

    
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


extension AllSpecies: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if species == nil {
            return 0
        } else {
            return allSpecies.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "speciesCell", for: indexPath) as! SpeciesDataCell
        
    
        cell.updateUI(result: allSpecies[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let field = allSpecies[indexPath.row]
        performSegue(withIdentifier: "toSelectedSpecie", sender: field)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? SelectedOneSpecie {
            destination.detail = sender as! SpeciesResults
        }
    }
}



