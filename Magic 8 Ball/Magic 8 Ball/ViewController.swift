//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by CCM2308 CCM2308 on 31/01/2018.
//  Copyright © 2018 Hristiyan Trifonov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    //The random variable
    var randomBallNumber : Int = 0
    
    //The connection to the image
    @IBOutlet weak var ballImageView: UIImageView!
       
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateBallImage()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func askButtonPressed(_ sender: Any) {
        updateBallImage()
    }
    
    func updateBallImage(){
        randomBallNumber = Int(arc4random_uniform(5))
        ballImageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    //ADD MOTION DETECTION (SHAKING PHONE)
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBallImage()
    }
    
}

