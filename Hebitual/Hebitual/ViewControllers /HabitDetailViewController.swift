//
//  HabitDetailViewController.swift
//  Hebitual
//
//  Created by Mohammed Drame on 3/2/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit

class HabitDetailViewController: UIViewController {
    var habit: Habit!
    var habitIndex: Int!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    private var persistence = PersistenceLayer()

    @IBOutlet weak var imageViewIcon: UIImageView!
    @IBOutlet weak var labelCurrentStreak: UILabel!
    @IBOutlet weak var labelTotalCompletions: UILabel!
    @IBOutlet weak var labelBestStreak: UILabel!
    @IBOutlet weak var labelStartingDate: UILabel!
    @IBOutlet weak var buttonAction: UIButton!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateUI()
    }
    
    
    @IBAction func pressActionButton(_ sender: Any) {
       habit = persistence.markHabitAsCompleted(habitIndex)
       updateUI()
    }
    
    private func updateUI() {
           title = habit.title
           imageViewIcon.image = habit.selectedImage.image
           labelCurrentStreak.text = "\(habit.currentStreak) days"
           labelTotalCompletions.text = String(habit.numberOfCompletions)
           labelBestStreak.text = String(habit.bestStreak)
           labelStartingDate.text = habit.dateCreated.stringValue

           if habit.completedToday {
               buttonAction.setTitle("Completed for Today!", for: .normal)
           } else {
               buttonAction.setTitle("Mark as Completed", for: .normal)
           }
       }

}
