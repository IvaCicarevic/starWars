//
//  SpeciesDataCell.swift
//  starWars
//
//  Created by Iva Cicarevic on 3/10/19.
//  Copyright © 2019 Iva Cicarevic. All rights reserved.
//

import UIKit

class SpeciesDataCell: UITableViewCell {

    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var classification: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateUI(result: SpeciesResults) {
        
        name.text = result.name
        classification.text = "Classification: \(result.classification)"
    }
}
