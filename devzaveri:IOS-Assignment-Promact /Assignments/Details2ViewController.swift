//
//  DetailsViewController.swift
//  Assignments
//
//  Created by promact on 20/02/23.
//

import UIKit

class Details2ViewController: UIViewController {
    
//    Creating outlets
    
    @IBOutlet weak var NameLbl: UILabel!
    
    @IBOutlet weak var AgeLbl: UILabel!
    
    @IBOutlet weak var EmailLbl: UILabel!
    
    @IBOutlet weak var addLbl: UILabel!
    
    @IBOutlet weak var NumberLbl: UILabel!
    
    @IBOutlet weak var OccupationLbl: UILabel!
    
//    Creating an empty Strings to store 2nd screen's data
    
    var NameStr:String! = nil
    var AgeInt:String! = nil
    var EmailStr:String! = nil
    var AddStr:String! = nil
    var NumberInt:String! = nil
    var OccuStr:String! = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NameLbl.layer.borderWidth = 1
        NameLbl.layer.borderColor = UIColor.white.cgColor
        
        AgeLbl.layer.borderWidth = 1
        AgeLbl.layer.borderColor = UIColor.white.cgColor
        
        EmailLbl.layer.borderWidth = 1
        EmailLbl.layer.borderColor = UIColor.white.cgColor
        
        addLbl.layer.borderWidth = 1
        addLbl.layer.borderColor = UIColor.white.cgColor
        
        NumberLbl.layer.borderWidth = 1
        NumberLbl.layer.borderColor = UIColor.white.cgColor
        
        OccupationLbl.layer.borderWidth = 1
        OccupationLbl.layer.borderColor = UIColor.white.cgColor

//        Storing the data to our all text fields
        
        NameLbl.text = NameStr
        AgeLbl.text = AgeInt
        EmailLbl.text = EmailStr
        addLbl.text = AddStr
        NumberLbl.text = NumberInt
        OccupationLbl.text = OccuStr
    }
    

   
}
