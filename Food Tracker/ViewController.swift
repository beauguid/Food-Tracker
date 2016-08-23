//
//  ViewController.swift
//  Food Tracker
//
//  Created by Guidry, Beau J on 8/22/16.
//  Copyright © 2016 Guidry, Beau J. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Handle the text field's user input through delegate callbacks
        //this makes ViewController a delegate for nameTextField
        nameTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK:  UITextFieldDelegate

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    // MARK: Actions
    @IBAction func setDefaultLabelText(sender: UIButton) {
        nameTextField.text = "Default text"
    }

}

