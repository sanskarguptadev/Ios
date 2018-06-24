//
//  todoViewController.swift
//  Assignment2
//
//  Created by sanskargupta on 21/05/18.
//  Copyright © 2018 sanskargupta. All rights reserved.
//

import UIKit

class todoViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = tableView.dequeueReusableCell(withIdentifier: "toDo", for: indexPath) as! todoCoustumTableViewCell
        myCell.todo(todo[indexPath.row].title)
        if todo[indexPath.row].completed == true{
            myCell.accessoryType = .checkmark
        }
        return myCell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        loadtodoData() {
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
