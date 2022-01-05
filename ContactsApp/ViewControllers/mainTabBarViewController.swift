//
//  ViewController.swift
//  ContactsApp
//
//  Created by Arslan Abdullaev on 29.12.2021.
//

import UIKit

class mainTabBarViewController: UITabBarController {
    
    var persons = Person.getContactList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sendModel()
    }
    
}

extension mainTabBarViewController {
    private func sendModel() {
        guard let contactsTVC = viewControllers?.first as? ContactsTableViewController else {return}
        guard let contactsDTVC = viewControllers?.last as? ContactsDetailsTableViewController else {return}
        
        contactsTVC.persons = persons
        contactsDTVC.persons = persons
        }
    }


//let personVC = self.tabBarController?.viewControllers![] as! ContactsTableViewController
//personVC.person = person
