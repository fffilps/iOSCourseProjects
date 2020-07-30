//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var doneLabel: UILabel!
    
    var player: AVAudioPlayer!
    
    let eggTime = ["Soft": 5, "Medium": 7, "Hard": 12]

    var totalTime = 0
    var secondsPassed = 0
    var timer = Timer()
    
    @IBAction func HardnessSelected(_ sender: UIButton) {
        
        
        
        //gets rid of all existing timers going
        timer.invalidate()
        
        //gets the selected egg Title
        let hardness = sender.currentTitle!
        
        totalTime = eggTime[hardness]!
        
        progressBar.progress = 0.0
        secondsPassed = 0
        doneLabel.text = hardness
        
        
        //creates the timer ticking every second
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
        
        
    }
    //tells the timer how and when to run
    @objc func updateTimer() {
        if secondsPassed < totalTime {
            
            
            secondsPassed += 1
            progressBar.progress = Float(secondsPassed) / Float(totalTime)
            
            
        }
        else {
            timer.invalidate()
            playSound()
            doneLabel.text = "DONE!"
            
        }
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    

}
