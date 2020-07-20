//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by J'mari Wyatt on 14/06/2019.
//  Copyright © 2019 J'mariko Consulting. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ImageView: UIImageView!
    let ballArray = [#imageLiteral(resourceName: "ball1.png"),#imageLiteral(resourceName: "ball2.png"),#imageLiteral(resourceName: "ball3.png"),#imageLiteral(resourceName: "ball4.png"),#imageLiteral(resourceName: "ball5.png")]
    
    

    @IBAction func ballButton(_ sender: UIButton) {
        ImageView.image = ballArray.randomElement()
    }
    

}

