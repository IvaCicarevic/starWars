//
//  PeopleDataCell.swift
//  starWars
//
//  Created by Iva Cicarevic on 3/5/19.
//  Copyright © 2019 Iva Cicarevic. All rights reserved.
//

import UIKit

class PeopleDataCell: UITableViewCell {
    
    @IBOutlet weak var name: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func updateUI(result: Result) {
        name.text = result.name
    }
}
