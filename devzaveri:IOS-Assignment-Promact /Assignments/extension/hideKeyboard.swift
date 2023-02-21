//
//  Extensions.swift
//  Assignments
//
//  Created by promact on 17/02/23.
//

import Foundation
import UIKit

//Creating Extension to hide keyboard when we click in screen

extension UIViewController {
    func hideKeyboard() {
        let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        
        tap.cancelsTouchesInView = true
        view.addGestureRecognizer(tap)
    }
//    dismissKeybord
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }
}
    
