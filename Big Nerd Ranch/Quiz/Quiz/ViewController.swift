//
//  ViewController.swift
//  Quiz
//
//  Created by Kyle Harding on 6/13/16.
//  Copyright © 2016 harding. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    let questions = ["From what is cognac made?","What is 7+7?", "What is the capitol of Vermont?"]
    let answers = ["Grapes", "14", "Montpelier"]
    var currentQuestionIndex: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func showNextQuestion(sender: AnyObject) {
        currentQuestionIndex += 1
        if(currentQuestionIndex == answers.count){
            currentQuestionIndex = 0;
        }
        questionLabel.text = questions[currentQuestionIndex]
        
    }
    
    
    @IBAction func showAnswer(sender: AnyObject) {
        answerLabel.text = answers[currentQuestionIndex]
    }

    }

