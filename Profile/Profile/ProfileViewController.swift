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
  var  personalInformation : [PersonalInformation] = [PersonalInformation(name:"🌹",imageNumber:""),PersonalInformation(name:"Casimiro",imageNumber:""),PersonalInformation(name:"سالم محمد",imageNumber:""),PersonalInformation(name:"خالد البريكي",imageNumber:""),PersonalInformation(name:"علي البوسعيدي ",imageNumber:""),PersonalInformation(name:"سالم محمد",imageNumber:""),PersonalInformation(name:"Lucas Fascis",imageNumber:""),PersonalInformation(name:"Sergio Ramos",imageNumber:""),PersonalInformation(name: "Ferland Mindy",imageNumber:""),PersonalInformation(name: "Tony Cross",imageNumber:""),PersonalInformation(name: "Isco",imageNumber:""),PersonalInformation(name: "Nacho",imageNumber:"")]
    var Farouk = ""
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.backBarButtonItem = UIBarButtonItem(title: " ", style: .plain, target: nil, action: nil)
    
        
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
 
