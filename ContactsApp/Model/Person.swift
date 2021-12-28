//
//  Person.swift
//  ContactsApp
//
//  Created by Arslan Abdullaev on 28.12.2021.
//

import Foundation

struct Person {
    
    let singletone = DataManager.shared
    
    func getNames() -> [DataManager] {
        for name in singletone.names {
            
        }
    }
    
}

extension Person {
    func randomizer(for value: DataManager) {
        
    }
    
    func isUnique(for value: DataManager) {
        
    }
}
