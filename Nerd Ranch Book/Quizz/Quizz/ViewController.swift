//
//  ViewController.swift
//  Quizz
//
//  Created by Kyle Harding on 3/16/16.
//  Copyright © 2016 Kyle Harding. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = ["From what is cognac made?", "What is 7+7", "What is the capitol of Vermont"]
    let answers: [String] = ["Grapes","14","Montpelier"]
    var currentQuestionIndex: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showNextQuestion(sender: AnyObject){
        ++currentQuestionIndex
        if currentQuestionIndex == questions.count{
            currentQuestionIndex = 0
        }
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
        
    }

    @IBAction func shortAnswer(sender: AnyObject){
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
        
    }

}

