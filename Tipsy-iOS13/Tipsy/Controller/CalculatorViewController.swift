//
//  ViewController.swift
//  Tipsy
//
//  Created by J'mari Wyatt on 09/09/2019.
//  Copyright © 2019 J'mariko Consulting. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    var tip = 0.10
    var numberOfPeople = 2
    var userSelection = ""
    var amountOwed = ""
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    

    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        //Make the button that triggered the IBAction selected.
        sender.isSelected = true
        
        //Get the current title of the button that was pressed.
        let buttonTitle = sender.currentTitle!
        userSelection = sender.currentTitle!
       
        
        //Remove the last character (%) from the title then turn it back into a String.
        let buttonMinusPercentSign = String(buttonTitle.dropLast())
        
        //Turn the String into a Double.
        let buttonTitleAsANumber = Double(buttonMinusPercentSign)!
        
        //Divide the percent expressed out of 100 into a decimal e.g. 10 becomes 0.1
        tip = buttonTitleAsANumber / 100
        
        billTextField.endEditing(true)
        
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        //Get the stepper value using sender.value, round it down to a whole number and then set it as the text in the splitNumberLabel
        
        splitNumberLabel.text = String(format: "%.0f", sender.value)
        
        //Set the numberOfPeople property as the value of the stepper as a whole number.
        numberOfPeople = Int(sender.value)
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let userInput = billTextField.text
        
        
        let newTip = (Double(userInput!)! * tip)
        let totalWTip = (Double(userInput!)! + newTip)
        let calculator = totalWTip / Double(numberOfPeople)
        amountOwed = String(format: "%.2f", calculator)
        

        performSegue(withIdentifier: "goToResults", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as? ResultsViewController
            destinationVC?.amountOwed = amountOwed
            destinationVC?.numberOfPeople = numberOfPeople
            destinationVC?.userSelection = userSelection
        }
        // Pass the selected object to the new view controller.
    }
    
}


