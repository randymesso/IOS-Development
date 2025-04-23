//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    //IBOutlet allows me to reference a UI element. Drage these above the viewDidLoad function

    @IBAction func rollButtonPressed(_ sender: UIButton)
    {
        
        let diceArray = [UIImage(imageLiteralResourceName: "DiceOne"), UIImage(imageLiteralResourceName: "DiceTwo"), UIImage(imageLiteralResourceName: "DiceThree"), UIImage(imageLiteralResourceName: "DiceFour"), UIImage(imageLiteralResourceName: "DiceFive"), UIImage(imageLiteralResourceName: "DiceSix")]
        //                     randome element from diceArray
        diceImageView1.image = diceArray.randomElement()
        
        diceImageView2.image = diceArray[Int.random(in: 0...5)]
        
    }
    
}

