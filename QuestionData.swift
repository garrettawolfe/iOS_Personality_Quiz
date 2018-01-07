//
//  QuestionData.swift
//  iOS_Personality_Quiz
//
//  Created by Garrett Wolfe on 1/4/18.
//  Copyright © 2018 Garrett Wolfe. All rights reserved.
//

struct Question{
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType{
    case singleAnswer, multipleAnswer, continuum
}

struct Answer{
    var text: String
    var type: AnimalType
}
enum AnimalType: Character {
    case chicken = "🐔", turtle = "🐢", lion = "🦁", dolphin = "🐬"
    
    var definition: String {
        switch self {
        case .chicken:
            return "You are adamant and strong. You are not afraid to speak how you feel."
        case .lion:
            return "Proud, a leader, and acts as a role model for others. Confident."
        case .dolphin:
            return "Friendly, loving, and outgoing. Always looking to please and make others happy"
        case .turtle:
            return "You are wise beyond your years, and you focus on the details. Slow and steady wins the race."
        }
    }
    }


import Foundation
