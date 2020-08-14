//
//  NewsCell.swift
//  News
//
//  Created by Mohamed Abd el Aty on 8/13/20.
//  Copyright © 2020 Aty. All rights reserved.
//

import UIKit

class NewsCell: UITableViewCell {
    @IBOutlet var profileImage: UIImageView!
    @IBOutlet var artLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var profileName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
