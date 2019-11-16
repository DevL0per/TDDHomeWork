//
//  ViewControllerTests.swift
//  TDDHomeWorkTests
//
//  Created by Роман Важник on 16/11/2019.
//  Copyright © 2019 Роман Важник. All rights reserved.
//

import XCTest
@testable import TDDHomeWork

class ViewControllerTests: XCTestCase {
    
    var vc: ViewController!

    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        vc = storyboard.instantiateViewController(
            withIdentifier: "viewController"
            ) as? ViewController
        vc.loadViewIfNeeded()
    }

    override func tearDown() {
        vc = nil
        super.tearDown()
    }
    
    func testHasNameTextField() {
        XCTAssertTrue(vc.nameTextField.isDescendant(of: vc.view))
    }

    func testHasSurnameTextField() {
        XCTAssertTrue(vc.suranameTextField.isDescendant(of: vc.view))
    }
 
    func testHasPhoneNumberTextField() {
        XCTAssertTrue(vc.phoneNumberTextField.isDescendant(of: vc.view))
    }
    
    func testHasSaveButton() {
        XCTAssertTrue(vc.saveButton.isDescendant(of: vc.view))
    }
    
    func testTryToSaveEmptyContact() {
        vc.saveContact()
        XCTAssertEqual(vc.contactManager.contactCount, 0)
    }
    
    func testAddContact() {
        vc.nameTextField.text = "Foo"
        vc.suranameTextField.text = "Bar"
        vc.phoneNumberTextField.text = "Baz"
        
        vc.saveContact()
        
        let contact = Person(name: "Foo",
                             surname: "Bar",
                             phone: "Baz")
        XCTAssertEqual(contact, vc.contactManager.contactAt(index: 0))
    }
    
    func testSaveButtonHasAction() {
        let saveButton = vc.saveButton
        guard let action = saveButton?.actions(
            forTarget: vc,
            forControlEvent: .touchUpInside
            ) else {  XCTFail(); return }
        XCTAssertTrue(action.contains("saveContact"))
    }
}
