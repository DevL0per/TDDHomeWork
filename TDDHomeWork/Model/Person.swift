//
//  Person.swift
//  TDDHomeWork
//
//  Created by Роман Важник on 13/11/2019.
//  Copyright © 2019 Роман Важник. All rights reserved.
//

import Foundation

struct Person {
    var name: String!
    var surname: String?
    var phone: String!
    var date: Date!
    private(set) var image: Data?
    
    init(name: String, phone: String, image: Data? = nil) {
        self.name = name
        self.phone = phone
        self.image = image
        date = Date()
    }
    
    init(name: String, surname: String, phone: String, image: Data? = nil) {
        self.init(name: name, phone: phone, image: image)
        self.surname = surname
    }
}
