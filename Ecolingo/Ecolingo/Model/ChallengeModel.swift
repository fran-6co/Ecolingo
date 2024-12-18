//
//  ChallengeModel.swift
//  Ecolingo
//
//  Created by Fran Ochoa on 23/10/24.
//

import SwiftUI

struct Challenge {
    let id = UUID()
    let name: String
    let type: ChallengeType
    let topic: ChallengeTopic
    let image: Image?
    let description: String
    let userPoints: Int
}

enum ChallengeType: String, CaseIterable, Identifiable {
    case watch = "Watch"
    case experience = "Experience"
    case play = "Play"
    case challenge = "Challenge"
    
    var id: String { self.rawValue }
}

enum ChallengeTopic: String, CaseIterable, Identifiable {
    case plasticWaste = "Plastic Waste"
    case urbanFarming = "Urban Farming"
    case sustainableFashion = "Sustainable Fashion"
    case renewableEnergy = "Renewable Energy"
    case wildlifeConservation = "Wildlife Conservation"
    
    var id: String { self.rawValue }
}
