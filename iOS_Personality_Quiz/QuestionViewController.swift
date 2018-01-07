//
//  QuestionViewController.swift
//  iOS_Personality_Quiz
//
//  Created by Garrett Wolfe on 12/31/17.
//  Copyright © 2017 Garrett Wolfe. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
    @IBOutlet weak var singleStackView: UIStackView!
    @IBOutlet weak var multipleStackView: UIStackView!
    @IBOutlet weak var continuumStackView: UIStackView!
    var questionIndex = 0
    var questions: [Question] = [Question(text: "Which food do you like the most?",type:.singleAnswer,answers: [Answer(text: "Steak", type: .lion),Answer(text: "Cornflakes", type: .chicken),Answer(text: "Sardines", type: .dolphin),Answer(text: "Crab", type: .turtle)]),
        Question(text: "Which activities do you enjoy?", type: .multipleAnswer,answers: [
            Answer(text: "Leading", type: .lion),
            Answer(text: "Yelling", type: .chicken),
            Answer(text: "Swimming", type: .dolphin),
            Answer(text: "Eating", type: .turtle)
            ]),Question(text: "How much do you enjoy car rides?",type: .continuum,answers: [
                            Answer(text: "I dislike them", type: .lion),
                            Answer(text: "I get a little nervous",
                                   type: .chicken),
                            Answer(text: "I barely notice them",
                                   type: .turtle),
                            Answer(text: "I love them", type: .dolphin)
                ])
    ]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    func updateUI(){
        singleStackView.isHidden=true
        multipleStackView.isHidden=true
        continuumStackView.isHidden=true
        
        navigationItem.title = "Question #\(questionIndex+1)"
        let currentQuestion = questions[questionIndex]
        switch currentQuestion.type {
        case .singleAnswer:
            singleStackView.isHidden = false
        case .multipleAnswer:
            multipleStackView.isHidden = false
        case .continuum:
            continuumStackView.isHidden = false
        }
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
