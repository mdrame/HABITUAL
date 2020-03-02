//
//  ConfirmHabitViewController.swift
//  Hebitual
//
//  Created by Mohammed Drame on 3/2/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit

class ConfirmHabitViewController: UIViewController {

    var habitImage: Habit.Images!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var habitImageView: UIImageView!
    @IBOutlet weak var habitNameInputField: UITextField!
    
    
    @IBAction func createHabitButtonPressed(_ sender: UIButton) {
        
    }
}
