//
//  postNetworkManger.swift
//  Assignment2
//
//  Created by sanskargupta on 18/05/18.
//  Copyright © 2018 sanskargupta. All rights reserved.
//

import Foundation

struct PostData : Decodable {
    let userId : Int
    let id : Int
    let title : String
    let body : String
}

var post = [PostData]()

func loadPostData(completed: @escaping ()->()){
    let preferences = UserDefaults.standard
    var currentLevel: Int!
    let currentLevelKey = "currentLevel"
    if preferences.object(forKey: currentLevelKey) == nil {
        print("key doesnt exists")
    } else {
        currentLevel = preferences.integer(forKey: currentLevelKey)
    }

    let temp : String = "https://jsonplaceholder.typicode.com/posts?userId="+String(currentLevel)
    let url = URL(string : temp)
    let session = URLSession.shared
    session.dataTask(with: url!){(data, response, error) in
        guard let data = data else { return }
        print(data)
        do{
            post = try JSONDecoder().decode([PostData].self, from: data)
            DispatchQueue.main.async {
                completed()
            }
        } catch let jsonErr{
            print("error", jsonErr)
        }
    }.resume()
    print("post Data is called")
}
