//
//  CustomTableViewCell.swift
//  Assignment2
//
//  Created by sanskargupta on 17/05/18.
//  Copyright © 2018 sanskargupta. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func user(_ name: String ) {
        nameLbl.text = name
    }

}
