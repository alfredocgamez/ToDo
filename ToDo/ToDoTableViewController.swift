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
        
        
        //1. Create the alert controller.
        let alert = UIAlertController(title: "Add Item", message: "Enter a text", preferredStyle: .alert)
        
        //2. Add the text field. You can configure it however you need.
        alert.addTextField { (textField) in
            textField.placeholder = "Task"
        }
        
        // 3. Grab the value from the text field, and print it when the user clicks OK.
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak alert] (_) in
            
            weak var weakSelf = self
            
            guard let field = alert?.textFields?[0], let text = field.text else{
                return
            }
            weakSelf?.list.append(text)
            weakSelf?.tableView.reloadData()

        }))
        
        // 4. Present the alert.
        self.present(alert, animated: true, completion: nil)
    }
    
}
