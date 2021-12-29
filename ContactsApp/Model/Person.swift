//
//  Person.swift
//  ContactsApp
//
//  Created by Arslan Abdullaev on 28.12.2021.
//

import Foundation
import UIKit

struct Person {
 
    let singletone = DataManager.shared
    
    
    func getNames() -> [String] {
        shuffleRand(for: singletone.names)
    }
    
    func getSurnames() -> [String] {
        shuffleRand(for: singletone.surnames)
    }
    
    func getEmails() -> [String] {
        shuffleRand(for: singletone.emails)
    }
    
    func getPhoneNumbers() -> [String] {
        shuffleRand(for: singletone.phones)
    }
    
}

extension Person {
    
    func shuffleRand(for values: [String]) -> [String] {
        var changedValues = values.shuffled()
        var shuffledValues: [String] = []
        
        for _ in 0..<changedValues.count {
            let randomIndex = Int.random(in: 0..<changedValues.count)
            shuffledValues.append(changedValues[randomIndex])
            changedValues.remove(at: randomIndex)
        }
        
        return shuffledValues
    }
    
    /*
    private func randomizer(for values: [String]) -> [String] {
        let shuffled = values.shuffled()
        return shuffled
    }
     */
    
    /*
     private func randomizer3(for values: [String]) -> [String] {
        var setOfValues = Set<String>()
        
        while setOfValues.count < values.count {
            let indexOfValue = Int(arc4random_uniform(UInt32(values.count)))
            setOfValues.insert(values[indexOfValue])
        }
        let arrayOfValues = Array(setOfValues)
        
        return arrayOfValues
    }
     */
    
   /* func randomizer1(for values: [String]) -> [String] {
        var arrayOfValues: [String] = []
        
        while arrayOfValues.count < values.count {
            for value in values {
                let indexOfValue = Int(arc4random_uniform(UInt32(values.count)))
                let isUnique = arrayOfValues.filter { $0 == value }.count > 0
                if isUnique == true {
                    arrayOfValues.removeLast()
                } else if isUnique == false {
                    arrayOfValues.append(values[indexOfValue])
                }
                
            }
        }
        return arrayOfValues
    }
    */
}


