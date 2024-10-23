//
//  ChallengeModel.swift
//  Ecolingo
//
//  Created by Fran Ochoa on 23/10/24.
//

import Foundation

struct Challenge {
    let id = UUID()
    let name: String
    let type: ChallengeType
    let topic: ChallengeTopic
}

enum ChallengeType: String {
    case watch, experience, play, challenge, unknown
}

enum ChallengeTopic: String {
    case plasticWaste = "Plastic Waste"
    case urbanFarming = "Urban Farming"
    case sustainableFashion = "Sustainable Fashion"
    case renewableEnergy = "Renewable Energy"
    case wildlifeConservation = "Wildlife Conservation"
}
