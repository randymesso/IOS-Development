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
    let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720]
    var timer = Timer()
    var totalTime = 0
    var secondsPassed = 0

    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var titleLabel: UILabel!

    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func harnessSelector(_ sender: UIButton) {
        

        timer.invalidate()

        let hardness = sender.currentTitle!

        totalTime = eggTimes[hardness]!
        progressBar.progress = 0.0
        secondsPassed = 0
        titleLabel.text = hardness

        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }

    func playSound(soundName: String) {
        guard let url = Bundle.main.url(forResource: soundName, withExtension: ".mp3") else {
            print("Error: Sound file not found.")
            return
        }

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
            print("Error initializing AVAudioPlayer: \(error)")
        }
    }

    @objc func updateTimer() {
        if secondsPassed < totalTime {
            progressBar.progress = Float(secondsPassed) / Float(totalTime)
            secondsPassed += 1
        } else {
            timer.invalidate()
            progressBar.progress = 1
            playSound(soundName: "sbtrapvinebycarb0n")
            titleLabel.text = "DONE! Now turn up🍽️🎊"
        }
    }
}
