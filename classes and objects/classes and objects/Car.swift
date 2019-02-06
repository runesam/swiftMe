//
//  Car.swift
//  classes and objects
//
//  Created by Semih Ewdala on 05.02.19.
//  Copyright © 2019 bta3 computer. All rights reserved.
//

import Foundation

enum CarType {
    case Sedan;
    case Coupe;
    case HatchBack
}

class Car {
    var color = "Black";
    var numberOfSeat = 5;
    var typeOfCar = CarType.Coupe;
    
    convenience init(customerColor: String) {
        self.init();
        color = customerColor;
    }
    
    func drive() {
        print("car is moving");
    }
}
