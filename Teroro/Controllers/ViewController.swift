//
//  ViewController.swift
//  Teroro
//
//  Created by Kemal Poyraz on 08.02.21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var questionBrain = QuestionBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        
        questionBrain.nextQuestion(userChoice: sender.currentTitle!)
        updateUI()
    }
    
    func updateUI() {
        
        questionLabel.text = questionBrain.getQuestionTitle()
        choice1Button.setTitle(questionBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(questionBrain.getChoice2(), for: .normal)
    }
    
}

