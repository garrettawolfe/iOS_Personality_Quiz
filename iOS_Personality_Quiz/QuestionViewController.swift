//
//  QuestionViewController.swift
//  iOS_Personality_Quiz
//
//  Created by Garrett Wolfe on 12/31/17.
//  Copyright © 2017 Garrett Wolfe. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var questions: [Question] = [
        Question(text: "Which food do you like the most?",
                 type:.SingleAnswer,
                 answers: [
                    Answer(text: "Steak", type: .lion),
                    Answer(text: "Cornflakes", type: .chicken),
                    Answer(text: "Sardines", type: .dolphin),
                    Answer(text: "Crab", type: .turtle)
            ]),
        Question(text: "Which activities do you enjoy?", type: .MultipleAnswer, answers: [
        Answer(text: "Leading", type: .lion),
        Answer(text: "Yelling", type: .chicken),
        Answer(text: "Swimming", type: .dolphin),
        Answer(text: "Eating", type: .turtle)
        ]),Question(text: "How much do you enjoy car rides?",
                 type: .Continuum,
                 answers: [
                    Answer(text: "I dislike them", type: .lion),
                    Answer(text: "I get a little nervous",
                           type: .chicken),
                    Answer(text: "I barely notice them",
                           type: .turtle),
                    Answer(text: "I love them", type: .dolphin)
            ])
    ]
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
