//
//  photoViewController.swift
//  Assignment2
//
//  Created by sanskargupta on 21/05/18.
//  Copyright © 2018 sanskargupta. All rights reserved.
//

import UIKit

class photoViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photo.count
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photo", for: indexPath) as! custoumCollectionViewCell
        let imagedata = try? Data(contentsOf: photo[indexPath.row].url)
        cell.photo(image: imagedata!)
        return cell
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        loadPhotoData(){
            self.collectionView.reloadData()
        }

        // Do any additional setup after loading the view.
    }


}
