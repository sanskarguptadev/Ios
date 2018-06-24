//
//  PostViewController.swift
//  Assignment2
//
//  Created by sanskargupta on 18/05/18.
//  Copyright © 2018 sanskargupta. All rights reserved.
//

import UIKit

class PostViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return post.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = tableView.dequeueReusableCell(withIdentifier: "postCell", for: indexPath) as! postCustomTableViewCell
       // print(post[indexPath.row].id)
    
        myCell.post(post[indexPath.row].title, post[indexPath.row].body)
        
        return myCell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadPostData() {
            self.tableView.reloadData()
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
