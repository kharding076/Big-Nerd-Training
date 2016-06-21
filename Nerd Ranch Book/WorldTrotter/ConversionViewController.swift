//
//  ConversionViewController.swift
//  WorldTrotter
//
//  Created by Kyle Harding on 3/20/16.
//  Copyright © 2016 Kyle Harding. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController, UITextFieldDelegate{
    
    
    @IBOutlet var celsiusLabel: UILabel!
    @IBOutlet var textField: UITextField!
    
    var fahrenheitValue: Double?{
        didSet{
            updateCelsiusLabel()
        }
    }
    
    var celsiusValue: Double?{
        if let value = fahrenheitValue {
            return (value - 32) * (5/9)
        }else{
            return nil
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Conversion Controller loaded")
    }
    
      
    @IBAction func fahrenheitFieldEditingChanged(textField:UITextField){
        if let text = textField.text, value = Double(text){
            fahrenheitValue = value
        }
    }
    
    @IBAction func dismissKeyboard(sender: AnyObject) {
        textField.resignFirstResponder()
    }
    
    func updateCelsiusLabel(){
        if let value = celsiusValue{
            celsiusLabel.text = numberFormatter.stringFromNumber(value)
        }else{
            celsiusLabel.text = "???"
        }
    }
    
    let numberFormatter: NSNumberFormatter = {
        let nf = NSNumberFormatter()
        nf.numberStyle = .DecimalStyle
        nf.minimumFractionDigits = 0
        nf.maximumFractionDigits = 1
        return nf
    }()
    
    func  textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        let existingTextHasDecimalSeperator = textField.text?.rangeOfString(".")
        let replacementTextHasDecimalSeperator = string.rangeOfString(".")
        let letterSet = NSCharacterSet.letterCharacterSet()
        
        
        if existingTextHasDecimalSeperator != nil && replacementTextHasDecimalSeperator != nil{
            return false
        }else if string.rangeOfCharacterFromSet(letterSet) != nil {
            return false
            
        }else{
            return true
        }
    }
}
