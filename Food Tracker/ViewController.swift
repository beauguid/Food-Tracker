//
//  ViewController.swift
//  Food Tracker
//
//  Created by Guidry, Beau J on 8/22/16.
//  Copyright © 2016 Guidry, Beau J. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    // MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var ratingControl: RatingControl!
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
    
    func textFieldDidBeginEditing(textField: UITextField) {
        if(nameTextField.text == "Default text")
        {
            nameTextField.text = ""
            
        }
    }

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        //dismiss the picker if the user cancelled
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        //The info dictionary contains multiple representations of the image, and this uses the original
        let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        //Set photoImageView to display the selected image
        photoImageView.image = selectedImage
        //dismiss the picker
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    // MARK: Actions
    @IBAction func selectImageFromPhotoLibrary(sender: AnyObject) {
        //hide keyboard
        nameTextField.resignFirstResponder()
        
        //creating the image picker controller variable instantiating a UIImagePickerController class
        let imagePickerController = UIImagePickerController()
        //selecting the sourcetype for the imagePickerController to the enumerated .PhotoLibrary type
        imagePickerController.sourceType = .PhotoLibrary
        //sets the delegate
        imagePickerController.delegate = self
        
        presentViewController(imagePickerController, animated: true, completion: nil)
        
    }


}

