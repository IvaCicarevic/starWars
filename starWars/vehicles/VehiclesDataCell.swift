//
//  VehiclesDataCell.swift
//  starWars
//
//  Created by Iva Cicarevic on 3/11/19.
//  Copyright © 2019 Iva Cicarevic. All rights reserved.
//

import UIKit

class VehiclesDataCell: UITableViewCell {
    
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var manufacturer: UILabel!
    @IBOutlet weak var model: UILabel!
    @IBOutlet weak var costInCredits: UILabel!
    @IBOutlet weak var lenght: UILabel!
    @IBOutlet weak var maxAtmSpeed: UILabel!
    @IBOutlet weak var crew: UILabel!
    @IBOutlet weak var passengers: UILabel!
    
    
    override func awakeFromNib() {

        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    func updateUI(result: VehicleResult) {
        name.text = result.name
        manufacturer.text = "Manufacturer: \(result.manufacturer)"
        model.text = "Model: \(result.model)"
        costInCredits.text = "Cost: \(result.cost_in_credits)"
        lenght.text = " Length: \(result.length)"
        maxAtmSpeed.text = "Mas: \(result.max_atmosphering_speed)"
        crew.text = "Crew: \(result.crew)"
        passengers.text = "Passengers: \(result.passengers)"
    }
}
