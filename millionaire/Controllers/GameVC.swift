//
//  GameVC.swift
//  GameVC
//
//  Created by Михаил Егоров on 28.08.2021.
//

import UIKit

protocol GameDelegate {
    func game(_ viewController: GameVC, didEndGameWiht result: Int)
}

class GameVC: UIViewController {    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var questionButtonA: UIButton!
    @IBOutlet weak var questionButtonB: UIButton!
    @IBOutlet weak var questionButtonC: UIButton!
    @IBOutlet weak var questionButtonD: UIButton!
    
    private var questionArray = [Question]()
    private var countCorrect: Int = 0
    
    var gameDelegate: GameDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.questionArray = questionList
        questionButtonA.tag = 0
        questionButtonB.tag = 1
        questionButtonC.tag = 2
        questionButtonD.tag = 3
        setButtonTitle()
    }
    
    @IBAction func setQuestionButton(_ sender: UIButton) {
        
        if questionArray[countCorrect].answer[sender.tag].correct == true {
            countCorrect += 1
            questionArray.count <= countCorrect ?
            gameDelegate?.game(self, didEndGameWiht: countCorrect) :
            setButtonTitle()
            
        } else {
            gameDelegate?.game(self, didEndGameWiht: countCorrect)
        }
    }
    
    func setButtonTitle(){
        let quest = questionArray[countCorrect]
        questionLabel.text = quest.question
        questionButtonA.setTitle(
            quest.answer[0].name, for: .normal)
        questionButtonB.setTitle(
            quest.answer[1].name, for: .normal)
        questionButtonC.setTitle(
            quest.answer[2].name, for: .normal)
        questionButtonD.setTitle(
            quest.answer[3].name, for: .normal)
    }
}



