//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Jmari Wyatt on 6/4/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    var numberOfPeople: Int?
    var userSelection: String?
    var amountOwed: String?
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var mainView = CalculatorViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingsLabel.text = "Split between \(numberOfPeople!), with \(userSelection!) tip."
        totalLabel.text = "\(amountOwed!)"

        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
