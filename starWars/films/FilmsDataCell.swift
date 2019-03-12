//
//  FilmsDataCell.swift
//  starWars
//
//  Created by Iva Cicarevic on 3/10/19.
//  Copyright © 2019 Iva Cicarevic. All rights reserved.
//

import UIKit

class FilmsDataCell: UITableViewCell {
    
    
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var episodeID: UILabel!
    @IBOutlet weak var director: UILabel!
    @IBOutlet weak var producer: UILabel!
    @IBOutlet weak var releaseDate: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func updateUI(result: FilmsResults) {
        title.text = result.title
        episodeID.text = "Episode number: \(String(result.episode_id))"
        director.text = "Director: \(result.director)"
        producer.text = "Producer: \(result.producer)"
        releaseDate.text = "Release date: \(result.release_date)"
    }
}
