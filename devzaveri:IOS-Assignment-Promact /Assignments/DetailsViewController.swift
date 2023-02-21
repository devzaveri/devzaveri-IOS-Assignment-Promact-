//
//  DetailsViewController.swift
//  Assignments
//
//  Created by promact on 17/02/23.
//

import UIKit

class DetailsViewController: UIViewController {
    

//  creating Outlets for second screen
    
    @IBOutlet weak var Name: UITextField!
    
    @IBOutlet weak var Age: UITextField!
    
    @IBOutlet weak var Email: UITextField!
    
    @IBOutlet weak var Address: UITextField!
    
    @IBOutlet weak var Number: UITextField!
    
    @IBOutlet weak var Occupation: UITextField!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        calling function to hide Keyboard
        self.hideKeyboard()
    }
    

//  Buttomn Actions
    
    @IBAction func BtnSubmit(_ sender: Any) {
//      Calling 3rd screen for data passing
        
        let Details2ViewController: Details2ViewController = self.storyboard?.instantiateViewController(withIdentifier: "Details2ViewController") as! Details2ViewController
        self.navigationController?.pushViewController(Details2ViewController, animated: true)
        
//        Passing data from 2nd screen to 3rd screen
        
        Details2ViewController.NameStr = Name.text
        Details2ViewController.AgeInt = Age.text
        Details2ViewController.EmailStr = Email.text
        Details2ViewController.AddStr = Address.text
        Details2ViewController.NumberInt = Number.text
        Details2ViewController.OccuStr = Occupation.text
    }
    
}
