//
//  ViewController.swift
//  quizzler
//
//  Created by Semih Ewdala on 25.01.19.
//  Copyright © 2019 bta3 computer. All rights reserved.
//

import JGProgressHUD;

import UIKit;

class ViewController: UIViewController {
    let questions = QuestionBank();
    var questionIndex = 0;
    var score = 0;

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        setQuestion();
        updateUI();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
    
    @IBAction func answerPressed(_ sender: UIButton) {
        checkAnswer(sender.tag == 1);
        nextQuestion();
        updateUI();
    }
    
    func setQuestion() {
        let firstQuestion = questions.list[questionIndex];
        questionLabel.text = firstQuestion.questionText;
    }
    
    func checkAnswer(_ pickedAnswer: Bool) {
        let hud = JGProgressHUD(style: .dark);
        hud.show(in: self.view);
        hud.dismiss(afterDelay: 0.5);
        
        if (pickedAnswer == questions.list[questionIndex].answer) {
            hud.indicatorView = JGProgressHUDSuccessIndicatorView();
            hud.textLabel.text = "Correct";
            return score += 1;
        }
        
        hud.indicatorView = JGProgressHUDErrorIndicatorView();
        hud.textLabel.text = "Wrong!";
    }
    
    func updateUI() {
        let count = questions.list.count;
        scoreLabel.text = "Score: \(score)";
        progressLabel.text = "\(questionIndex + 1) / \(count)"
        let widthValue = (view.frame.size.width / CGFloat(count)) * CGFloat(questionIndex + 1);
        progressBar.frame.size.width = CGFloat(widthValue);
    }
    
    func nextQuestion() {
        if (questionIndex == questions.list.count - 1) {
            onQuestionsDone();
        } else {
            questionIndex += 1;
        }
        setQuestion();
    }
    
    func onQuestionsDone() {
        let alert = UIAlertController(title: "WoW", message: "You're done with questions", preferredStyle: .alert);
        let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {
            UIAlertAction in self.startOver()
        });
        
        alert.addAction(restartAction);
        present(alert, animated: true, completion: nil);
    }
    
    func startOver() {
        questionIndex = 0;
        score = 0;
        updateUI();
        setQuestion();
    }
}

