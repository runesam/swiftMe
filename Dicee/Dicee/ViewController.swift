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
    
    func updateDiceImages() {
        randomDiceIndexI = getRandomInt()
        randomDiceIndexII = getRandomInt()
        print(randomDiceIndexI, randomDiceIndexII)
        diceImageI.image = UIImage(named: "dice\(randomDiceIndexI + 1)")
        diceImageII.image = UIImage(named: "dice\(randomDiceIndexII + 1)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
}
