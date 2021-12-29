//
//  MainTabBarViewController.swift
//  ContactsApp
//
//  Created by Arslan Abdullaev on 29.12.2021.
//

import UIKit

class ContactsViewController: UIViewController {
    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
       // phoneLabel.text = person.getPhoneNumbers()
    }
    

}

