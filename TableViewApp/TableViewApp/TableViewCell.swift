//
//  TableViewCell.swift
//  TableViewApp
//
//  Created by Felix ITs 08 on 11/09/19.
//  Copyright © 2019 Felix. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var lbl1: UILabel!
    
    @IBOutlet var lbl2: UILabel!
    
    @IBOutlet var img: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
