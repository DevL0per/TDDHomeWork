//
//  TDDHomeWorkUITests.swift
//  TDDHomeWorkUITests
//
//  Created by Роман Важник on 17/11/2019.
//  Copyright © 2019 Роман Важник. All rights reserved.
//

import XCTest

class TDDHomeWorkUITests: XCTestCase {

    override func setUp() {
        continueAfterFailure = false
    }

    override func tearDown() {
        
    }

    func testExample() {
        
        let app = XCUIApplication()
        app.launch()
        
        let nameTextField = app.textFields["name"]
        nameTextField.tap()
        nameTextField.typeText("Foo")
        
        let surnameTextField = app.textFields["surname"]
        surnameTextField.tap()
        surnameTextField.typeText("Bar")
        
        let phonenumberTextField = app.textFields["phoneNumber"]
        phonenumberTextField.tap()
        phonenumberTextField.typeText("Baz")
        app.buttons["Save"].tap()
        
    }

}
