//
//  todoCoustumTableViewCell.swift
//  Assignment2
//
//  Created by sanskargupta on 21/05/18.
//  Copyright © 2018 sanskargupta. All rights reserved.
//

import UIKit

class todoCoustumTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func todo(_ title : String){
        titleLbl.text = title
    }
}
