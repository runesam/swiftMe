//
//  ViewController.swift
//  Dicee
//
//  Created by Semih Ewdala on 06.12.18.
//  Copyright © 2018 bta3 computer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomDiceIndexI = 0
    var randomDiceIndexII = 0
    
    @IBOutlet weak var diceImageI: UIImageView!
    @IBOutlet weak var diceImageII: UIImageView!
    
    func getRandomInt() -> Int {
        let random = arc4random_uniform(6);
        return Int(random)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        randomDiceIndexI = getRandomInt()
        randomDiceIndexII = getRandomInt()
        print(randomDiceIndexI, randomDiceIndexII)
    }
    
}
