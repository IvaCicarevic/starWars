//
//  PeopleVC.swift
//  starWars
//
//  Created by Iva Cicarevic on 3/5/19.
//  Copyright © 2019 Iva Cicarevic. All rights reserved.
//

import UIKit

class PeopleVC: UIViewController {
    
    
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
    
    
extension PeopleVC: UITableViewDataSource, UITableViewDelegate {
        
    func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            
            if peoples == nil {
                return 0
            } else {
                return allPeople.count
            }
        }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "peopleCell", for: indexPath) as! PeopleDataCell
            
        cell.updateUI(result: allPeople[indexPath.row])
            
            
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let field = allPeople[indexPath.row]
        performSegue(withIdentifier: "toPerson", sender: field)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? Person {
            destination.detail = sender as! Result
        }
    }
}
