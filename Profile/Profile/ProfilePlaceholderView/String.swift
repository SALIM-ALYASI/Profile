//
//  String.swift
//  Profile
//
//  Created by ALYASI on 8/13/20.
//  Copyright © 2020 ALYASI. All rights reserved.
//

import Foundation
extension String {

var winLettersByColor: String {
    var str = self
    let map = [ "L":"A",
                "I":"A",
                "M":"A",
                "Y":"A",
                //
                "H":"B",
                "N":"B",
                "U":"B",
                "Z":"B",
                //
                "G":"C",
                "Q":"C",
                "V":"C",
                "X":"C",
                //
                "S":"D",
                "F":"D",
                "O":"D",
                "W":"D",
                //
                "K":"E",
                "P":"E",
                "R":"E",
                "T":"E",
                "J":"E",
                //a
                "z":"B",
                "v":"B",
                "g":"B",
                "f":"B",
                //
                "a":"E",
                "b":"E",
                "o":"E",
                "w":"E",
                "y":"E",
                "j":"E",
                //
                "i":"E",
                "k":"E",
                "r":"E",
                "m":"E",
                //
                "q":"D",
                "n":"D",
                "p":"D",
                "s":"C",
                "c":"C",
                "d":"C",
                //
                "h":"C",
                "t":"C",
                "l":"C",
                "u":"C",
                "x":"C",
                "1":"D",
                "2":"D",
                "3":"D",
                "4":"D",
                //
                "5":"D",
                "6":"D",
                "7":"D",
                "8":"D",
                "9":"D",
                "0":"D",
//                    //أ
                    "أ":"A",
                    "ا":"A",
                    "إ":"A",
  "ء":"A",
//                    //
                    "ب":"B",
                    "ت":"B",
                    "ث":"B",
                    "ج":"B",
   
                    "ح":"C",
                    "خ":"C",
                    "د":"C",
                    "ذ":"C",

                    "ر":"D",
                    "ز":"D",
                    "س":"D",
                    "ش":"D",
                    "ص":"D",
"ض":"E",
"ط":"E",
"ظ":"E",
"ع":"E",

                    "غ":"A",
                    "ف":"A",
                    "ق":"E",
                    "ك":"B",

                    "ل":"B",
                    "م":"D",
                    "ن":"D",
 
                    "و":"A",
                    "ي":"A",

         ]
    map.forEach { str = str.replacingOccurrences(of: $0, with: $1) }
    return str
}
}

extension String {

    var containsEmoji: Bool {
        for scalar in unicodeScalars {
            switch scalar.value {
            case 0x1F600...0x1F64F, // Emoticons
                 0x1F300...0x1F5FF, // Misc Symbols and Pictographs
                 0x1F680...0x1F6FF, // Transport and Map
                 0x2600...0x26FF,   // Misc symbols
                 0x2700...0x27BF,   // Dingbats
                 0xFE00...0xFE0F:   // Variation Selectors
                return true
            default:
                continue
            }
        }
        return false
    }

}
