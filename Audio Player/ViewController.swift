// first commit 
//  ViewController.swift
//  Audio Player
//
//  Created by George Garcia on 6/8/17.
//  Copyright © 2017 George. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player = AVAudioPlayer()
    
    @IBOutlet var slider: UISlider!
    @IBOutlet var songLabel: UILabel!

    @IBAction func playButton(_ sender: AnyObject) {
        
        player.play()
        songLabel.text? = "Football Head by Flamingosis"
        
    }
    
    @IBAction func pauseButton(_ sender: AnyObject) {
        
        player.pause()
    }
    
    @IBAction func sliderMoved(_ sender: AnyObject) {
        
        player.volume = slider.value
        
    }
    @IBAction func restartButton(_ sender: AnyObject) {
        
        player.currentTime = 0
        //player.play()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let audioPath = Bundle.main.path(forResource: "Football Head", ofType: "mp3")
        
        do{
            
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
            
        }catch {
            // Process errors
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

