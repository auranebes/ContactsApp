//
//  Person.swift
//  ContactsApp
//
//  Created by Arslan Abdullaev on 28.12.2021.
//

import Foundation
import UIKit

struct Person {
 
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
}

extension Person {
    
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phoneNumbers = DataManager.shared.phones.shuffled()
        
        let iterationCount = min(
                                names.count,
                                 surnames.count,
                                 emails.count,
                                 phoneNumbers.count
                                )
        
        for index in 0..<iterationCount {
            let person = Person(name: names[index],
                                surname: surnames[index],
                                email: emails[index],
                                phoneNumber: phoneNumbers[index]
                                )
            persons.append(person)
        }
        return persons
    }
    
    
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}
