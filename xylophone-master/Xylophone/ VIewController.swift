//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer : AVAudioPlayer! //Create audiop player of this type AVAudioPlayer
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    @IBAction func notePressed(_ sender: UIButton) {
        playSound(soundFileName: soundArray[sender.tag-1])
    }
    
    func playSound(soundFileName : String){
        
        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "wav" )
        
        //NOTE:
        //by puting ! after try - we do not need a "do-catch" block - essentially saying that it will always work (this is a brave statement)
        //try! audioPlayer = AVAudioPlayer(contentsOf: soundURL!)  (the exlamation mark is called "manual override here")
        
        do {
            try audioPlayer = AVAudioPlayer(contentsOf: soundURL!)
        }
        catch{
            print(error)
        }
        
        audioPlayer.play()
    }
    
}

