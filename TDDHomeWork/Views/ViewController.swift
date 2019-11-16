//
//  ViewController.swift
//  TDDHomeWork
//
//  Created by Роман Важник on 13/11/2019.
//  Copyright © 2019 Роман Важник. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private(set) var contactManager = ContactManager()
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var suranameTextField: UITextField!
    @IBOutlet var phoneNumberTextField: UITextField!
    
    @IBOutlet var saveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func saveContact() {
        guard let name = nameTextField.text,
              let surname = suranameTextField.text,
              !name.isEmpty,
              !surname.isEmpty
        else { return }
        let phone = phoneNumberTextField.text
        
        let person = Person(
            name: name,
            surname: surname,
            phone: phone ?? ""
        )
        contactManager.addContact(person: person)
    }


}

