//
//  CustomCell.swift
//  CustomTableViewCellApp
//
//  Created by ifsp on 02/09/16.
//  Copyright © 2016 com.ifsp. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var breed: UILabel!
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var name: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
