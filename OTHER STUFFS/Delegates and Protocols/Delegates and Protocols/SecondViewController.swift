//
//  SecondViewController.swift
//  Delegates and Protocols
//
//  Created by CCM2308 CCM2308 on 10/02/2018.
//  Copyright © 2018 Hristiyan Trifonov. All rights reserved.
//

//WE PASS DATA BACK BY USING DELEGATES AND PROTOCOLS

import UIKit

protocol CanReceive {
    
    func dataReceived(data : String)
    
}

class SecondViewController: UIViewController {

    //This controller will do the delegating - i.e. will send data
    var delegate : CanReceive?
    
    var data = ""
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = data
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func sendDataBack(_ sender: Any) {
       
        
        delegate?.dataReceived(data: textField.text!)
        dismiss(animated: true, completion: nil)
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
