//
//  ViewController.swift
//  BirthDayNoteTaker
//
//  Created by Hasan Doğacan Gürsoy on 15.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextfield: UITextField!

    @IBOutlet weak var birthdayTextField: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var birtdayLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if let name = storedName as? String {
            nameLabel.text = "Name : \(name)";
        }
        if let birthday = storedBirthday as? String{
            birtdayLabel.text = "Birthday : \(birthday)";
        }
        
    }


    @IBAction func saveButton(_ sender: Any) {
        
        UserDefaults.standard.set(nameTextfield.text ,forKey: "name")
        UserDefaults.standard.set(birthdayTextField.text, forKey: "birthday")
        
        nameLabel.text = "Name : \(nameTextfield.text!)";
        birtdayLabel.text = "Birthday : \(birthdayTextField.text!)";
        
    }
    
    @IBAction func deleteButton(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if storedName is String{
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "Name :"
        }
        if storedBirthday is String{
            UserDefaults.standard.removeObject(forKey: "birthday")
            birtdayLabel.text = "Birthday :"
        }
        
        
    }
}

