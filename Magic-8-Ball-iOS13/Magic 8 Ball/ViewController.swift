//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func askButtonPressed(_ sender: Any)
    {
        imageView.image = ballArray[Int.random(in: 0...5)]
    }
    
    let ballArray = [UIImage(named: "kc1"),UIImage(named: "kc2"),UIImage(named: "kc3"),UIImage(named: "kc4"),UIImage(named: "kc5"),UIImage(named: "kc6")]


}

