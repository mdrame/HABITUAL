//
//  HabitsTableViewController.swift
//  Hebitual
//
//  Created by Mohammed Drame on 2/26/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit

class HabitsTableViewController: UITableViewController {
    var habits: [Habit] = [
        Habit(title: "Go to bed before 10pm", image: Habit.Images.book),
        Habit(title: "Drink 8 Glasses of Water", image: Habit.Images.book),
        Habit(title: "Commit Today", image: Habit.Images.book),
        Habit(title: "Stand up every Hour", image: Habit.Images.book)
    ]
    private var persistence = PersistenceLayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBar()
        // register cell
        tableView.register(
            HabitTableViewCell.nib,
            forCellReuseIdentifier: HabitTableViewCell.identifier
        )
    }
    
    // TableView Delegate and DataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persistence.habits.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell( withIdentifier: HabitTableViewCell.identifier, for: indexPath) as! HabitTableViewCell
        let habit = habits[indexPath.row]
        cell.configure(habit)
        return cell
    }
    
    
    }


extension HabitsTableViewController {
        
        func setupNavBar() {
            title = "Habitual"
            let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(pressAddHabit))
            navigationItem.rightBarButtonItem = addButton
        }
        
        @objc func pressAddHabit() {
            habits.insert(Habit(title: "Hellow", image: Habit.Images.pet), at: 0)
            let topIndexPath = IndexPath(row: 0, section: 0)
            tableView.insertRows(at: [topIndexPath], with: .automatic)
            //        tableView.reloadData()
        }
    
    
}
