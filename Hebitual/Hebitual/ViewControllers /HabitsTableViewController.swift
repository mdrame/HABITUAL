//
//  HabitsTableViewController.swift
//  Hebitual
//
//  Created by Mohammed Drame on 2/26/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit

class HabitsTableViewController: UITableViewController {
    var names: [String] = ["Alan", "Braus", "Adriana", "Mitchell", "Dani", "Jess", "Dan", "Meredith", "Dan", "Milad"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // TableView Delegate and DataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell
        if let dequeueCell = tableView.dequeueReusableCell(withIdentifier: "cell") {
            cell = dequeueCell
        } else {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
    
}
