//
//  ImageView.swift
//  Profile
//
//  Created by ALYASI on 8/12/20.
//  Copyright © 2020 ALYASI. All rights reserved.
//

import UIKit
class ImageView: UIImageView {
    override func didMoveToWindow() {
        self.layer.cornerRadius = self.frame.height  / 2
        self.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        self.layer.borderWidth = 1
   }
}
