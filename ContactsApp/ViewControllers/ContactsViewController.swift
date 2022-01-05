//
//  MainTabBarViewController.swift
//  ContactsApp
//
//  Created by Arslan Abdullaev on 29.12.2021.
//

import UIKit

class ContactsViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var persons: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabel.text = "Phone: \(persons.phoneNumber)"
        emailLabel.text = "E-mail: \(persons.email)"
    }
    

}

