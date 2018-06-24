//
//  custoumCollectionViewCell.swift
//  Assignment2
//
//  Created by sanskargupta on 21/05/18.
//  Copyright © 2018 sanskargupta. All rights reserved.
//

import UIKit

class custoumCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var Image: UIImageView!
    func photo(image: Data){
        Image.image = UIImage(data: image)
    }
}
