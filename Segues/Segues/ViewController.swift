//
//  ViewController.swift
//  Segues
//
//  Created by CCM2308 CCM2308 on 10/02/2018.
//  Copyright © 2018 Hristiyan Trifonov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "goToSecondScreen", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondScreen" {
            
            //constant to hold reference to the destination and tell what type the destination will be (in this case SecondViewController)
            let destinationVC = segue.destination as! SecondViewController
            
            destinationVC.textPassedOver = textField.text!
            
        }
        
    }
    
}


