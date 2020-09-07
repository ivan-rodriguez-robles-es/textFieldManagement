//
//  ViewController.swift
//  textFieldManagement
//
//  Copyleft © 2020 irr. All rights reserved.

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var textfName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.textfName.delegate = self;
    }
    // Action Editing text. It will print the UITextField
    // when a key is typed.
    @IBAction func printText(_ sender: UITextField) {
        print(textfName.text ?? "")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        print("intro was pressed.")
        
        // Resign the first responder from textField to close the keyboard.
        textfName.resignFirstResponder()
        
        return true
    }
    
    @IBAction func underLineUILabel(_ sender: UIButton) {
        textfName.text = ""
        
        let underlineAtt = [NSAttributedString.Key.underlineStyle: NSUnderlineStyle.thick.rawValue]
        
        let underlineAttStr = NSAttributedString(string: labelTitle.text ?? "oops!", attributes: underlineAtt)
        
        labelTitle.attributedText = underlineAttStr
    }
}

