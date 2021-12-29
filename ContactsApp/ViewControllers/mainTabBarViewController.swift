//
//  ViewController.swift
//  ContactsApp
//
//  Created by Arslan Abdullaev on 29.12.2021.
//

import UIKit

class mainTabBarViewController: UITabBarController {
    
    var person = Person()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sendModel()
    }
    
}

extension mainTabBarViewController {
    private func sendModel() {
        
        }
    }


//let personVC = self.tabBarController?.viewControllers![] as! ContactsTableViewController
//personVC.person = person
