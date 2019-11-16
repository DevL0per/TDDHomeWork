//
//  ContactManager.swift
//  TDDHomeWork
//
//  Created by Роман Важник on 16/11/2019.
//  Copyright © 2019 Роман Важник. All rights reserved.
//

import Foundation

class ContactManager {
    
    var contactCount: Int {
        return contacts.count
    }
    
    var contacts = [Person]()
    
    func addContact(person: Person) {
        if !contacts.contains(person) {
            contacts.append(person)
        }
    }
    
    
    func contactAt(index: Int) -> Person? {
        if index >= contacts.count {
            return nil
        } else {
            return contacts[index]
        }
    }
    
}
