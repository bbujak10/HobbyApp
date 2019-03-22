//
//  SongsTableViewCell.swift
//  HobbyApp
//
//  Created by Bartosz Bujak on 12/01/2019.
//  Copyright © 2019 Bartosz Bujak. All rights reserved.
//

import UIKit

class SongsTableViewCell: UITableViewCell {
    @IBOutlet var songTitleLabel : UILabel!
    @IBOutlet var songArtistLabel : UILabel!
    @IBOutlet var songAlbumYearLabel : UILabel!
    @IBOutlet var songAlbumCoverImageView : UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
