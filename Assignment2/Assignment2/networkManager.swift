//
//  networkManager.swift
//  Assignment2
//
//  Created by sanskargupta on 17/05/18.
//  Copyright © 2018 sanskargupta. All rights reserved.
//

import Foundation

struct UserData: Decodable{
    let id : Int
    let name : String
    let username : String
    let email : String
}

var userDetails = [UserData]()
func loadData(completed: @escaping ()->()){
    let url = URL(string: "https://jsonplaceholder.typicode.com/users")
    let session = URLSession.shared
    session.dataTask(with: url!){(data, response, error) in
        guard let data = data else { return }
        print(data)
        do{
            userDetails = try JSONDecoder().decode([UserData].self, from: data)
            DispatchQueue.main.async {
                completed()
            }
        } catch let jsonErr{
            print("error", jsonErr)
        }
    }.resume()
    print("network manger file called")
}
