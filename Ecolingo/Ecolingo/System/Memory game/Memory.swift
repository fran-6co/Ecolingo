//
//  Memory.swift
//  Ecolingo
//
//  Created by Keerthi Siva on 29/10/24.
//

import Foundation
import SwiftUI

class Card: Identifiable, ObservableObject {
    var id = UUID()
    @Published var isFaceUp = false
    @Published var isMatched = false
    var imageName: String
    var animalName: String
    var isImageCard: Bool  // New property to determine if this card shows the image or the name

    init(imageName: String, animalName: String, isImageCard: Bool) {
        self.imageName = imageName
        self.animalName = animalName
        self.isImageCard = isImageCard
    }
    
    func turnOver() {
        self.isFaceUp.toggle()
    }
}

let cardPairs: [(imageName: String, animalName: String)] = [
    ("hornbill", "Hornbill"),
    ("otter", "Otter"),
    ("monitor_lizard", "Monitor lizard"),
    ("uwu koel", "Uwu koel"),
    ("macaque", "Macaque"),
    ("panda", "Panda"),
    ("wild boar", "Wild boar"),
    ("pangolin", "Pangolin")
]


func createCardList() -> [Card] {
    var cardList = [Card]()
    for pair in cardPairs {
        // Add one card with the image and one with the name
        cardList.append(Card(imageName: pair.imageName, animalName: pair.animalName, isImageCard: true))
        cardList.append(Card(imageName: pair.imageName, animalName: pair.animalName, isImageCard: false))
    }
    return cardList.shuffled()
}
