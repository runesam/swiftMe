//
//  ViewController.swift
//  quizzler
//
//  Created by Semih Ewdala on 25.01.19.
//  Copyright © 2019 bta3 computer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
    @IBAction func answerPressed(_ sender: Any) {
        
    }
    
}

