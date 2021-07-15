//
//  ViewController.swift
//  Stopwatch
//
//  Created by Danya on 12.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var stopWatchTimer = Timer()
    var currentTime = 0
    
    
    @IBOutlet weak var minutesLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var pauseButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pauseButton.isHidden = true
        startButton.isHidden = false
        
        
        startButton.layer.cornerRadius = startButton.frame.size.height / 2
        stopButton.layer.cornerRadius = stopButton.frame.size.height / 2
        pauseButton.layer.cornerRadius = pauseButton.frame.size.height / 2
        
    }


    
    @IBAction func StartButtonActivity(_ sender: UIButton) {
        
        startButton.isHidden = true
        pauseButton.isHidden = false
        stopButton.isEnabled = true
        
        //вот он тот самый метод который и надо разобратся как писать селектор
        stopWatchTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(self.updateTime)), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func stopButtonActivity(_ sender: UIButton) {
        
        pauseButton.isHidden = true
        startButton.isHidden = false
        stopButton.isEnabled = false
        
        currentTime = 0
        minutesLabel.text = "0"
        secondLabel.text = "0"
        
        
        stopWatchTimer.invalidate() //стоп
        
    }
    
    @objc func updateTime() {
        
        currentTime += 1
        minutesLabel.text = "\(currentTime / 60)"
        secondLabel.text = "\(currentTime % 60)"
        
        if currentTime == 3600 {
            currentTime = 0
        } //в целом логично, но сам бы я долго додумывался
        
    }
    
    @IBAction func pauseButtonActivity(_ sender: UIButton) {
        
        startButton.isHidden = false
        pauseButton.isHidden = true
        
        stopWatchTimer.invalidate() //пауза для таймера
        
    }
    
}

