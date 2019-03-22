//
//  MoviesTableViewCell.swift
//  HobbyApp
//
//  Created by Bartosz Bujak on 12/01/2019.
//  Copyright © 2019 Bartosz Bujak. All rights reserved.
//

import UIKit

class MoviesTableViewCell: UITableViewCell {
    @IBOutlet var titleLabel : UILabel!
    @IBOutlet var directorLabel : UILabel!
    @IBOutlet var scriptLabel : UILabel!
    @IBOutlet var budgetLabel : UILabel!
    @IBOutlet var yearLabel : UILabel!
    @IBOutlet var posterImageView : UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
