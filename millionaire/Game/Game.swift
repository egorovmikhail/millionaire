//
//  Game.swift
//  Game
//
//  Created by Михаил Егоров on 28.08.2021.
//

import Foundation

class Game {
    static var shared = Game()
    private let careTaker = Caretaker()
    private(set) var gameSession: [GameSession] {
        didSet {
            careTaker.saveSession(session: gameSession)
        }
    }
    private init() {
        gameSession = careTaker.loadSession() ?? []
    }
    
    func addSession(session: GameSession) {
        gameSession.append(session)
    }
    
    func clearSession() {
        gameSession.removeAll()
    }
}
