//
//  WordTableViewCell.swift
//  MentalismMagic
//
//  Created by Valerio Volpe on 24/02/2020.
//  Copyright © 2020 Valerio Volpe. All rights reserved.
//

import UIKit

class WordTableViewCell: UITableViewCell {

    @IBOutlet weak var wordLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
