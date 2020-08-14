//
//  ProfilePlaceholderView.swift
//  Profile
//
//  Created by ALYASI on 8/11/20.
//  Copyright © 2020 ALYASI. All rights reserved.
//
 
import UIKit

class ProfilePlaceholderView {
    // جلب الاسم وفرز الحروف وجعله بدال صوره
    static func profilePersonly(noun:String)-> String{
        var profile = ""
        let fullName : String = noun
        let fullNameArr : [String] = fullName.components(separatedBy: " ")
    if fullNameArr.count > 1 {
//        في حال الاشم مكون من كلمتين
        let firstName : String = String((fullNameArr[0].prefix(1)))
            let lastName : String = String((fullNameArr[1].prefix(1)))
            profile =  "\(firstName.uppercased())\(lastName )"
    }else  {
//        في  حال  الاسم مكون من كلمه واحده
        let NameArr = fullNameArr[0]
        if   NameArr.count > 1  {
            
        let firstName : String =  String((NameArr.prefix(2)))
        let expire = Array(firstName)
        profile = "\(expire[0].uppercased())\(expire[1] )"
        }else {
            let firstName : String =  String((NameArr.prefix(1)))
                   
                  profile = "\(firstName.uppercased() )"
        }
    }
        return profile
    }
 
//    اخ
    static  func characterColor(noun:String,imagNoun:String,Label:UILabel,view:UIView,imag:UIImageView,color:Color){
        var colorA: UIColor?
        var colorB: UIColor?
//        اختيار لون الخلفيه
        let colorNoun =  String((noun.prefix(1)))
        switch colorNoun.winLettersByColor{
            case "A":
                      colorA = #colorLiteral(red: 0.6679978967, green: 0.4751212597, blue: 0.2586010993, alpha: 1)
                      colorB = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
                        
            case "B":
                       colorA = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
                       colorB = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
            case "C":
                       colorA = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
                       colorB = #colorLiteral(red: 0.8446564078, green: 0.5145705342, blue: 1, alpha: 1)
            case "D":
                       colorA = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
                       colorB = #colorLiteral(red: 1, green: 0.4932718873, blue: 0.4739984274, alpha: 1)
            case "E":
                       colorA = #colorLiteral(red: 0, green: 0.3285208941, blue: 0.5748849511, alpha: 1)
                       colorB = #colorLiteral(red: 0.4508578777, green: 0.9882974029, blue: 0.8376303315, alpha: 1)
          
        default:
                      colorA = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
                      colorB = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        }
//    اختبار بوجود صوره او لا
    if imagNoun == "" {
            let profile = profilePersonly(noun: noun)
            Label.text = profile
//        اختيار بين لون متدرج او لوم واجد
        switch color {
               case .cAGradientLayer:
                    view.layer.cornerRadius = view.frame.height  / 2
                    let gradient: CAGradientLayer = CAGradientLayer()
                    gradient.colors = [colorA!.cgColor, colorB!.cgColor]
                    gradient.locations = [0.0 , 1.0]
                    gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
                    gradient.endPoint = CGPoint(x: 0.0, y: 1.0)
                    gradient.frame = CGRect(x: 0.0, y: 0.0, width: view.frame.size.width, height: view.frame.size.height)
                    view.layer.insertSublayer(gradient, at: 0)
             case.color: view.backgroundColor = colorA
                    }
            imag.image = UIImage(named:  "")
        }else{
            Label.text = ""
            imag.image = UIImage(named:  imagNoun)
        }
    }
    
    enum Color{
      case cAGradientLayer
      case color
     
  }
   
}

 
