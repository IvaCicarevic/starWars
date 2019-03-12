//
//  StarshipsDataCell.swift
//  starWars
//
//  Created by Iva Cicarevic on 3/12/19.
//  Copyright © 2019 Iva Cicarevic. All rights reserved.
//

import UIKit

class StarshipsDataCell: UITableViewCell {
    
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var model: UILabel!
    @IBOutlet weak var manufacturer: UILabel!
    @IBOutlet weak var length: UILabel!
    @IBOutlet weak var hyperdriveRating: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
    func updateUI(result: StarshipsResult) {
        name.text = result.name
        manufacturer.text = "Manufacturer: \(result.manufacturer)"
        model.text = "Model: \(result.model)"
        length.text = "Length: \(result.length)"
        hyperdriveRating.text = "HyperRating: \(result.hyperdrive_rating)"
    }

}
