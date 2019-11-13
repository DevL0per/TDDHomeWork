//
//  PersonTests.swift
//  TDDHomeWorkTests
//
//  Created by Роман Важник on 13/11/2019.
//  Copyright © 2019 Роман Важник. All rights reserved.
//

import XCTest
@testable import TDDHomeWork

class PersonTests: XCTestCase {

    override func setUp() {
    }

    override func tearDown() {
    }
    
    func testInitPersonWithNameAndPhone() {
        var person: Person!
        person = Person(name: "Foo", phone: "Bar")
        XCTAssertNotNil(person)
    }
    
    func testInitPersonWithFullNameAndPhone() {
        var person: Person
        person = Person(name: "Foo", surname: "Bar", phone: "Baz")
        XCTAssertNotNil(person)
    }
    
    func testWhenGivenNameAndPhoneSetsNameAndPhone() {
        let person = Person(name: "Foo", phone: "Bar")
        XCTAssertEqual(person.name, "Foo")
        XCTAssertEqual(person.phone, "Bar")
    }
    
    func testWhenGivenSurnameSetsSurname() {
        let person = Person(name: "Foo", surname: "Bar", phone: "Baz")
        XCTAssertEqual(person.surname, "Bar")
    }
    
    func testInitPersonWithDate() {
        let person = Person(name: "Foo", phone: "Bar")
        XCTAssertNotNil(person.date)
    }
    
    func testInitPersonWithImage() {
        let image = #imageLiteral(resourceName: "avatar")
        let imageData = image.pngData()!
        let person = Person(name: "Foo", phone: "Bar", image: imageData)
        XCTAssertNotNil(person.image)
    }
    
    func testInitPersonWithFullNameAndImage() {
           let image = #imageLiteral(resourceName: "avatar")
           let imageData = image.pngData()!
           let person = Person(name: "Foo", surname: "Bar", phone: "Baz", image: imageData)
        XCTAssertNotNil(person.image)
       }

}
