//
//  todoNetworkManager.swift
//  Assignment2
//
//  Created by sanskargupta on 21/05/18.
//  Copyright © 2018 sanskargupta. All rights reserved.
//

import Foundation
struct TodoData : Decodable {
    let userId : Int
    let id : Int
    let title : String
    let completed : Bool
}

var todo = [TodoData]()

func  loadtodoData(completed: @escaping ()->()){
    let preferences = UserDefaults.standard
    var currentLevel: Int!
    let currentLevelKey = "currentLevel"
    if preferences.object(forKey: currentLevelKey) == nil {
        print("key doesnt exists")
    } else {
        currentLevel = preferences.integer(forKey: currentLevelKey)
    }
    
    let temp : String = "https://jsonplaceholder.typicode.com/todos?userId="+String(currentLevel)
    let url = URL(string : temp)
    let session = URLSession.shared
    session.dataTask(with: url!){(data, response, error) in
        guard let data = data else { return }
        print(data)
        do{
            todo = try JSONDecoder().decode([TodoData].self, from: data)
            DispatchQueue.main.async {
                completed()
            }
        } catch let jsonErr{
            print("error", jsonErr)
        }
        }.resume()
    print("todo Data is called")
}
