//
//  postCustomTableViewCell.swift
//  Assignment2
//
//  Created by sanskargupta on 18/05/18.
//  Copyright © 2018 sanskargupta. All rights reserved.
//

import UIKit

class postCustomTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var postLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func post(_ title : String, _ body : String ){
        titleLbl.text = title
        postLbl.text = body
    }

}
