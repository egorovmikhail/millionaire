//
//  MainVC.swift
//  MainVC
//
//  Created by Михаил Егоров on 28.08.2021.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var currentResultLabel: UILabel!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "GameVC":
            if let destination = segue.destination as? GameVC {
                destination.gameDelegate = self
            }
//        case "ScoreVC":
//            if segue.destination is ScoreVC {
//
//            }
        default:
            break
        }
    }
    
}

extension MainVC: GameDelegate {
    func game(_ game: GameVC, didEndGameWiht result: Int) {
        currentResultLabel.text = "Текущий результат:  \(result)"
        Game.shared.addSession(session: GameSession(date: Date(), score: result))
        dismiss(animated: true, completion: nil)
    }
}
