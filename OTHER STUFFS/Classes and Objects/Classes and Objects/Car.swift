//
//  Car.swift
//  Classes and Objects
//
//  Created by CCM2308 CCM2308 on 07/02/2018.
//  Copyright © 2018 Hristiyan Trifonov. All rights reserved.
//

import Foundation

enum CarType {
    case Sedan
    case Coupe
    case Hatchback
}

class Car {
    
    var color = "Black"
    var numberOfSeats = 5
    var typeOfCar : CarType = .Coupe
    
    //The Designated initializer (constructor) - these parametes are a must when declaring an object
    init(){
        
    }
    
    //Here the parameters are optional (this is convenience initializer)
    convenience init (customerChosenColor : String){
        self.init()
        color = customerChosenColor
    }
    
    func drive(){
        print("car is moving")
    }
    
    
}

