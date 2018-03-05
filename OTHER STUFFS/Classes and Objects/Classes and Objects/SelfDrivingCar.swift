//
//  SelfDrivingCar.swift
//  Classes and Objects
//
//  Created by CCM2308 CCM2308 on 07/02/2018.
//  Copyright © 2018 Hristiyan Trifonov. All rights reserved.
//

import Foundation

//Now SelfDrivingCar inherits the capabilities of the Car class
class SelfDrivingCar : Car {
    
    var destination : String? //optional - this means that it could contain nil value
    
    //super.<something> means to use everything from the previous method
    //then we put our additional functionality
    override func drive() {
        super.drive()
        
        
        //The swiftier way of doing it - optional binding
        //We create a new constant and its value is set to the value of the optional
        //but it will execute if it is not nil (i.e destination has value), that's why it is kind of check of whether it is nil and we do not use "!" which generally is bad to use
        //This is the correct way
        if let userSetDestination = destination{
            print("Driving towards " + userSetDestination) //! - means that I am sure this wont be nil
        }
    }
    
}
