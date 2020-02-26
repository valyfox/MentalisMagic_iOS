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
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
    }
    
    override func setHighlighted(_ highlighted: Bool, animated: Bool) {
       if(highlighted) {
            wordLabel.backgroundColor = UIColor(named: Options.COLOR_ACCENT)
        } else {
            wordLabel.backgroundColor = UIColor(named: Options.COLOR_PRIMARY)
        }
    }

}
