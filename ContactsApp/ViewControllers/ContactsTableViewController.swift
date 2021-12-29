//
//  ContactsTableViewController.swift
//  ContactsApp
//
//  Created by Arslan Abdullaev on 28.12.2021.
//

import UIKit

class ContactsTableViewController: UITableViewController {
    
   var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        person.getNames().count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactsCell", for: indexPath)
        let names = person.getNames()
        let surnames = person.getSurnames()
        
        let contactNames = names[indexPath.row]
        let contactSurnames = surnames[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = "\(contactNames) \(contactSurnames)"
        
        cell.contentConfiguration = content

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let contact = person.getNames()[indexPath.row]
        performSegue(withIdentifier: "showDetails", sender: contact)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? ContactsViewController else { return }
        detailsVC.person = sender as? Person
    }
    
}
