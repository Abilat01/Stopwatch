//
//  ViewController.swift
//  Stopwatch
//
//  Created by Danya on 12.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var minutesLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var pauseButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pauseButton.isHidden = false
        startButton.isHidden = true
    }


    
    @IBAction func StartButtonActivity(_ sender: UIButton) {
    }
    
    @IBAction func stopButtonActivity(_ sender: UIButton) {
    }
    
    @IBAction func pauseButtonActivity(_ sender: UIButton) {
    }
    
}

