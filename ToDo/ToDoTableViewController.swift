//
//  ToDoTableViewController.swift
//  ToDo
//
//  Created by Alfredo Camacho Gamez on 30/12/17.
//  Copyright © 2017 Alfredo Camacho Gamez. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    
    var list:[String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source
    
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cel = UITableViewCell(style: .default, reuseIdentifier: "cellItem")
        cel.textLabel?.text = list[indexPath.row]
        return cel
    }
    
    //logic button
    @IBAction func addButtonTap(_ sender: Any) {
        list.append("Item \(list.count+1)")
        tableView.reloadData()
        
    }
    
}
