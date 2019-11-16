//
//  ContactManagerTests.swift
//  TDDHomeWorkTests
//
//  Created by Роман Важник on 16/11/2019.
//  Copyright © 2019 Роман Важник. All rights reserved.
//

import XCTest
@testable import TDDHomeWork

class ContactManagerTests: XCTestCase {
    
    var contactManager: ContactManager!
    var person: Person!

    override func setUp() {
        contactManager = ContactManager()
        person = Person(name: "Foo", phone: "Bar")
    }

    override func tearDown() {
        contactManager = nil
        person = nil
    }

    func testInitContactManagerWithEmptyList() {
        XCTAssertEqual(contactManager.contactCount, 0);
    }
    
    func testAddPersonIncrementContactCount() {
        contactManager.addContact(person: person)
        XCTAssertEqual(contactManager.contactCount, 1)
    }
    
    func testSendWrongIndexInContactAtShouldBeNil() {
        let contact = contactManager.contactAt(index: 2)
        XCTAssertNil(contact)
    }
    
    func testIsAddedContactIsSendedContact() {
        contactManager.addContact(person: person)
        XCTAssertEqual(contactManager.contactAt(index: 0), person)
    }
    
    func testAddingSameObjectsNotIncrimentContactCount() {
        contactManager.addContact(person: person)
        contactManager.addContact(person: person)
        
        XCTAssertEqual(contactManager.contactCount, 1)
    }
    
}
