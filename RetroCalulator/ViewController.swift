//
//  ViewController.swift
//  RetroCalulator
//
//  Created by Matthew J. Perkins on 12/28/16.
//  Copyright © 2016 Matthew J. Perkins. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var btnSound: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
  
        
        let path = Bundle.main.path(forResource: "btn", ofType: "wav")
        let soundURL = URL(fileURLWithPath: path!)
        
        do {
            try btnSound = AVAudioPlayer(contentsOf: soundURL)
            
            btnSound.prepareToPlay()
            
            
        } catch let err as NSError {
            print(err.debugDescription)
        
        }
    }
    @IBAction func numberPressed(sender: UIButton) {
        playSound()
    }
        
        
        func playSound() {
            if btnSound.isPlaying {
                btnSound.stop()
            }
            
            btnSound.play()
        }

    }
    
    








    




