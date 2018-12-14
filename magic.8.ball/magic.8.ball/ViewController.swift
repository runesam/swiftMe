//
//  ViewController.swift
//  magic.8.ball
//
//  Created by Semih Ewdala on 14.12.18.
//  Copyright © 2018 bta3 computer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    func answer () {
        let number = Int.random(in: 1 ... 5)
        ball.image = UIImage(named: "ball\(number)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        answer()
    }
    
    @IBOutlet weak var ball: UIImageView!
    @IBAction func answerButton(_ sender: UIButton) {
        answer()
    }
    
}

