//
//  HabitImageCollectionViewCell.swift
//  Hebitual
//
//  Created by Mohammed Drame on 3/2/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit

class HabitImageCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var habitImage: UIImageView!
       static let identifier = "habit image cell"

       static var nib: UINib {
           return UINib(nibName: String(describing: self), bundle: nil)
       }

       func setImage(image: UIImage, withSelection: Bool){
        if withSelection { self.habitImage.image = image.withRenderingMode(.alwaysOriginal) }
        else {
            self.habitImage.image = image.withRenderingMode(.alwaysTemplate)
            self.habitImage.tintColor = UIColor.gray }
    }
    
}
