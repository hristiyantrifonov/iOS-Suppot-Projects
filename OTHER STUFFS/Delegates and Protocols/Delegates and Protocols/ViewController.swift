//
//  ViewController.swift
//  Delegates and Protocols
//
//  Created by CCM2308 CCM2308 on 10/02/2018.
//  Copyright © 2018 Hristiyan Trifonov. All rights reserved.
//

//WE PASS DATA BACK BY USING DELEGATES AND PROTOCOLS

import UIKit



class ViewController: UIViewController, CanReceive {
    
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func changeToGreen(_ sender: Any) {
        view.backgroundColor = UIColor.green
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "sendDataForwards", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendDataForwards"{
            
            //to refer to the second view 
            let secondVC = segue.destination as! SecondViewController
            
            secondVC.data = textField.text! //it will always containt value even if empty ("!")
            
            secondVC.delegate = self
        }
    }
    
    func dataReceived(data: String) {
        label.text = data
    }
    
}
