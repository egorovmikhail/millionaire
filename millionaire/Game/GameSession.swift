//
//  GameSession.swift
//  GameSession
//
//  Created by Михаил Егоров on 28.08.2021.
//

import Foundation

class GameSession: Codable {
    var date: Date
    var score: Int
    
    init(date: Date, score: Int) {
        self.date = date
        self.score = score
    }
}
