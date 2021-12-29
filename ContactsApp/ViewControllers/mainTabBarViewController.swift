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

        // Do any additional setup after loading the view.
    }
    
}

extension mainTabBarViewController {
    private func sendModel(for segue: UIStoryboardSegue) {
        if let tabController = segue.destination as? UITabBarController
    {
            tabController.viewControllers?.forEach {
                
                if let nav = $0 as? UINavigationController {
                    if nav.restorationIdentifier == "ContactsNavigation" {
                        //  let tab = nav.topViewController as! UITableViewController
                          }
                }
            }
        }
    }
}
