//
//  ViewAccountViewController.swift
//  Profile
//
//  Created by ALYASI on 8/13/20.
//  Copyright © 2020 ALYASI. All rights reserved.
//

import UIKit

class ViewAccountViewController: UIViewController {
    @IBOutlet weak var nounLabel: UILabel!
    @IBOutlet weak var nounImageViewLabel: UILabel!
    @IBOutlet weak var backgroundImageView: View!
    @IBOutlet weak var photographImageView: UIImageView!
    var object: PersonalInformation!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = object.name
        nounLabel.text = object.name
        ProfilePlaceholderView.characterColor(noun: object.name!, imagNoun: object.imageNumber!, Label: nounImageViewLabel, view: backgroundImageView, imag: photographImageView, color: .color)
        navigationItem.backBarButtonItem = UIBarButtonItem(title: " ", style: .plain, target: nil, action: nil)
        
    }
    


}
