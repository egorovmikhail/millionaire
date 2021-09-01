//
//  StrategyRandomQuestion.swift
//  StrategyRandomQuestion
//
//  Created by Михаил Егоров on 01.09.2021.
//

import Foundation

protocol StrategyRandomQuestion {
    
    func randomQuestion(question:[Question]) -> [Question]
}
