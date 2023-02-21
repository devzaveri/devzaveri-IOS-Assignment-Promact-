//
//  ViewController.swift
//  Assignments
//
//  Created by promact on 16/02/23.
//

import UIKit

class ViewController: UIViewController , UITextViewDelegate {
    
//    Creating outlets.

    @IBOutlet weak var inputUserText: UITextField!
    
    @IBOutlet weak var inputuserPassword: UITextField!
    
    @IBOutlet weak var ImageView: UIImageView!
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        navigationController?.dismiss(animated: true, completion: nil)
        
//        Use to tap image and make it user frendly
        
        let tabGesture = UITapGestureRecognizer(target: self, action: #selector(imageTapped(TapGestureRecognizer:)))
        
        
        ImageView.isUserInteractionEnabled = true
        ImageView.addGestureRecognizer(tabGesture)
        
        
        
//        To set imageView's border and make ImageView circle
        
        super.viewWillAppear(true)
        ImageView.layer.masksToBounds = false
        ImageView.layer.borderWidth = 1
        ImageView.layer.borderColor = UIColor.black.cgColor
        ImageView.layer.cornerRadius = ImageView.frame.height / 2
        ImageView.clipsToBounds = true
        
//        This is the function to hide keyboard when we tap in screen
        
        self.hideKeyboard()
        
       
    }
    
//   Created and objc for open gallery when we tap on image

    @objc
    func imageTapped(TapGestureRecognizer: UITapGestureRecognizer){
       openGallery()
    }
    
//  Button actions

    @IBAction func btnLoginClick(_ sender: UIButton) {
        
//        Validation of Email and password with alert box
        
        if let email = inputUserText.text , let password = inputuserPassword.text {
            
            if email == ""{
                openAlert(title: "alert", message: "Please enter your Email First", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in
                    print("Okay Clicked")
                }])
            } else {
                
            }
            
            if !email.validateEmailId(){
                openAlert(title: "Alert", message: "Your Email is not Validate", alertStyle:  .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in
                    print("Okay Clicked!")
                }])
            } else if !password.validatePassword(){
                openAlert(title: "Alert", message: "Your Password is not Validate", alertStyle:  .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in
                    print("Okay Clicked!")
                }])
            } else {
                
            }
        } else {
            openAlert(title: "Alert", message: "Please add valid details", alertStyle:  .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in
                print("Okay Clicked!")
            }])
        }
        
//        To navigate between 1st to 2nd screen
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
           let secondVC = storyboard.instantiateViewController(identifier: "DetailsViewController")

           show(secondVC, sender: self)
    }
    
//    Navtigate between two text field while taking Input
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            if textField == inputUserText {
                // Switch to passwordTextField
                inputuserPassword.becomeFirstResponder()
            } else {
                // End editing
                textField.resignFirstResponder()
            }
            return true
        }
    
}

//  Extension to open Gallery when tap into ImageView


extension ViewController: UINavigationControllerDelegate , UIImagePickerControllerDelegate {
    
    func openGallery() {
        if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum) {
            let picker = UIImagePickerController()
            picker.delegate = self
            picker.sourceType = .savedPhotosAlbum
            present(picker, animated: true)
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let img = info[.originalImage] as? UIImage {
            ImageView.image = img
        }
        dismiss(animated: true)
    }
}
