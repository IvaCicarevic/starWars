//
//  PlanetsDataCell.swift
//  starWars
//
//  Created by Iva Cicarevic on 3/7/19.
//  Copyright © 2019 Iva Cicarevic. All rights reserved.
//

import UIKit

class PlanetsDataCell: UITableViewCell {

    
    @IBOutlet weak var name: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateUI(result: PlanetResult) {
        name.text = result.name
    }

}
