//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    var numberOfPeoples = 2

    @IBAction func tipChanged(_ sender: UIButton) {
        let sen = sender.currentTitle
        if sen == zeroPctButton.currentTitle{
            zeroPctButton.isSelected = true
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
            print(0.0)
        }
        else if sen == tenPctButton.currentTitle{
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = true
            twentyPctButton.isSelected = false
            print(0.1)
        }
        else{
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = true
            print(0.2)
        }
        billTextField.endEditing(true)
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
        splitNumberLabel.text = String(format: "%.0f",sender.value)
        numberOfPeoples = Int(sender.value)
 
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        print(numberOfPeoples)
        print(billTextField.text!)
    }
}

