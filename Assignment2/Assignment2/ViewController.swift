//
//  ViewController.swift
//  Assignment2
//
//  Created by sanskargupta on 17/05/18.
//  Copyright © 2018 sanskargupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
 
    @IBOutlet weak var tableView: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userDetails.count
    }
    
    var userid : Int = 0
    var userNumber : Int = 0
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = tableView.dequeueReusableCell(withIdentifier: "CoustumCell", for: indexPath) as! CustomTableViewCell
        myCell.user(userDetails[indexPath.row].name)
        return myCell
    }
    let tabCtrl: UITabBarController! = nil
   
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        userid = userDetails[indexPath.row].id
        let preferences = UserDefaults.standard
        let currentLevel = userid
        let currentLevelKey = "currentLevel"
        preferences.set(currentLevel, forKey: currentLevelKey)
        preferences.synchronize()
        
    }

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let tabCtrl = segue.destination as? UITabBarController
//        let destinationVc = tabCtrl?.viewControllers?.first as? PostViewController
//        destinationVc?.user =  loadPostData(){
//            print("data send")
//        }
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData(){
            self.tableView.reloadData()
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

