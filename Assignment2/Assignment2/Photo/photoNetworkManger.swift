//
//  photoNetworkManger.swift
//  Assignment2
//
//  Created by sanskargupta on 21/05/18.
//  Copyright © 2018 sanskargupta. All rights reserved.
//

import Foundation

struct PhotoData : Decodable {
    let albumId : Int
    let id : Int
    let title : String
    let url : URL
    let thumbnailUrl : URL
}

var photo = [PhotoData]()

func  loadPhotoData(completed: @escaping ()->()){
    let temp : String = "https://jsonplaceholder.typicode.com/photos"
    let url = URL(string : temp)
    let session = URLSession.shared
    session.dataTask(with: url!){(data, response, error) in
        guard let data = data else { return }
        print(data)
        do{
            photo = try JSONDecoder().decode([PhotoData].self, from: data)
            DispatchQueue.main.async {
                completed()
            }
        } catch let jsonErr{
            print("error", jsonErr)
        }
        }.resume()
    print("photo Data is called")
}
