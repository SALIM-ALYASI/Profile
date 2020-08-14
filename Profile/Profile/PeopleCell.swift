//
//  PeopleCell.swift
//  Profile
//
//  Created by ALYASI on 8/12/20.
//  Copyright © 2020 ALYASI. All rights reserved.
//

import UIKit

class PeopleCell: UITableViewCell {
    @IBOutlet weak var nounLabel: UILabel!
    @IBOutlet weak var nounImageViewLabel: UILabel!
     @IBOutlet weak var backgroundImageView: View!
    @IBOutlet weak var photographImageView: UIImageView!
   
    func personalInformation(personal:PersonalInformation)  {
       
        nounLabel.text = personal.name  ?? " 3"
        ProfilePlaceholderView.characterColor(noun: personal.name ?? "3", imagNoun: personal.imageNumber!, Label: nounImageViewLabel, view: backgroundImageView, imag: photographImageView, color: .cAGradientLayer)
    }
}
