//
//  ViewController.swift
//  Profile
//
//  Created by ALYASI on 8/11/20.
//  Copyright © 2020 ALYASI. All rights reserved.
//
struct PersonalInformation {
        var name: String?
    var imageNumber: String?
         
    
}
import UIKit

class ProfileViewController: UIViewController {
  var  personalInformation : [PersonalInformation] = []
    var Farouk = ""
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.backBarButtonItem = UIBarButtonItem(title: " ", style: .plain, target: nil, action: nil)
      ProfileData()
    
        
   }
    
func ProfileData()  {
        personalInformation.append(PersonalInformation(name:"Hammam Aba jood",imageNumber:"IMG_F4142D4AD33B-1"))
        personalInformation.append(PersonalInformation(name:"✏️",imageNumber:""))
        personalInformation.append(PersonalInformation(name:"Farouk",imageNumber:""))
        personalInformation.append(PersonalInformation(name:"Turky alarjan",imageNumber:""))
        personalInformation.append(PersonalInformation(name:"Maid Al - My Army",imageNumber:""))
        personalInformation.append(PersonalInformation(name:"سالم محمد",imageNumber:""))
        personalInformation.append(PersonalInformation(name:"565656",imageNumber:""))
        personalInformation.append(PersonalInformation(name:"Hammam Aba jood",imageNumber:"IMG_F4142D4AD33B-1"))
        personalInformation.append(PersonalInformation(name:"565656",imageNumber:""))
        personalInformation.append(PersonalInformation(name:"Farouk",imageNumber:""))
        personalInformation.append(PersonalInformation(name:"Turky alarjan",imageNumber:""))
        personalInformation.append(PersonalInformation(name:"Maid Al - My Army",imageNumber:""))
        personalInformation.append(PersonalInformation(name:"سالم محمد",imageNumber:""))
        personalInformation.append(PersonalInformation(name:"565656",imageNumber:""))
        personalInformation.append(PersonalInformation(name:"Hammam Aba jood",imageNumber:"IMG_F4142D4AD33B-1"))
        personalInformation.append(PersonalInformation(name:"565656",imageNumber:""))
        personalInformation.append(PersonalInformation(name:"Farouk",imageNumber:""))
        personalInformation.append(PersonalInformation(name:"Turky alarjan",imageNumber:""))
        personalInformation.append(PersonalInformation(name:"Maid Al - My Army",imageNumber:""))
        personalInformation.append(PersonalInformation(name:"سالم محمد",imageNumber:""))
        personalInformation.append(PersonalInformation(name:"🌹",imageNumber:""))
    }


}

extension ProfileViewController:UITableViewDelegate , UITableViewDataSource {

func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

    return personalInformation.count
  }
 
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "PeopleCell") as! PeopleCell
    cell.personalInformation(personal: personalInformation[indexPath.row])
   
     
    return cell
  }
    
func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = UIStoryboard.mainStoryboard.instantiateViewController(withIdentifier: "ViewAccountViewController") as! ViewAccountViewController
        vc.object = personalInformation[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
  }
}
 
