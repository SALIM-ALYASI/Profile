//
//  View.swift
//  Profile
//
//  Created by ALYASI on 8/12/20.
//  Copyright © 2020 ALYASI. All rights reserved.
//

import UIKit
class View: UIView {
   override func didMoveToWindow() {
            self.layer.cornerRadius = self.frame.height  / 2
            self.layer.shadowOpacity = 0.7
            self.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
            self.layer.shadowRadius = 15.0
            self.layer.shadowColor = UIColor.black.cgColor
            self.layer.borderColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
    self.layer.borderWidth = 0.5
            self.layer.masksToBounds = true
  }
}
 
