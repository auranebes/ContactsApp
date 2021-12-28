//
//  DataManager.swift
//  ContactsApp
//
//  Created by Arslan Abdullaev on 28.12.2021.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let names = [
        "John", "Aaron", "Tim",
        "Ted", "Steven", "Sharon",
        "Nicola", "Allan", "Bruce",
        "Carl"
        ]
    
    let surnames = [
        "Smith", "Dow", "Isaacson",
        "Pennyworth", "Jankin", "Butler",
        "Black", "Robertson", "Murphy",
        "Williams"
        ]
    
    let emails = [
        "jjjj@mail.ru", "aaaa@mail.ru","eeee@mail.ru",
        "hhhh@mail.ru", "wwww@mail.ru","mmmm@mail.ru",
        "xxxx@mail.ru", "pppp@mail.ru", "ssss@ma.ru",
        "1111@mail.ru"
        ]
    
    let phones = [
        "745396026", "145036843", "562880225",
        "738594072", "432349845", "459477625",
        "287185656", "293520954", "825654134",
        "645898473"
        ]
    
    private init() {}
}
