//
//  UsersViewController.swift
//  VideoGameLibraryAppProro
//
//  Created by Dakota Brown on 9/9/18.
//  Copyright © 2018 Dakota Brown. All rights reserved.
//

import UIKit

var users = [String]()

class UsersViewController: UIViewController {
    
    
    @IBOutlet weak var LibrarianUsername: UITextField!
    @IBOutlet weak var LibrarianPassword: UITextField!
    @IBOutlet weak var testingLabel: UILabel!
    
    @IBAction func EnterLibrarian(_ sender: Any) {
        let currentUsername = LibrarianUsername.text!
        let currentPassword = LibrarianPassword.text!
        
        if users.contains(currentUsername) && users.contains(currentPassword) {
            testingLabel.text = "Login Successful"
            self.performSegue(withIdentifier: "showLibrary", sender: self)
        } else {
            testingLabel.text = "Username or Password invalid"
        }
        
        
    }
    
    //New User
    
    @IBOutlet weak var NewUsername: UITextField!
    @IBOutlet weak var NewPassword: UITextField!
    
    @IBAction func NewUserEnter(_ sender: Any) {
        var newUser = [String]()
        newUser.append(NewUsername.text!)
        newUser.append(NewPassword.text!)
        NewUsername.text = ""
        NewPassword.text = ""
        users.append(contentsOf: newUser)
    }
    
    //Regular user
    
    @IBOutlet weak var RegUsername: UITextField!
    @IBOutlet weak var RegPassword: UITextField!
    
    
    @IBAction func RegUserPassword(_ sender: Any) {
    }
}
