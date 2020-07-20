//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by J'mari Wyatt on 08/08/2019.
//  Copyright © 2019 J'mariko Consulting. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    var storyCount = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        
        let userChoice = sender.currentTitle!
        _ = storyBrain.checkAnswer(userChoice)
        updateUI()
        
    }
    
    func updateUI() {
        let choice1 = storyBrain.getChoice1()
        let choice2 = storyBrain.getChoice2()
        storyLabel.text = storyBrain.getText()
        choice1Button.setTitle(choice1, for: .normal)
        choice2Button.setTitle(choice2, for: .normal)
    }
}

