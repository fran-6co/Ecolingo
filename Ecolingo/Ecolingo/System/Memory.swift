//
//  Memory.swift
//  Ecolingo
//
//  Created by Keerthi Siva on 29/10/24.
//

/*import Foundation
import SwiftUI

class Card: Identifiable, ObservableObject{
    var id = UUID()
    @Published var isFaceUp = false
    @Published var isMatched = false
    //var text: String
    var imageName: String
    
    
    /*init(text: String){
        self.text = text
    }*/
    
    init(imageName: String){
        self.imageName = imageName
    }
    
    func turnOver(){
        self.isFaceUp.toggle()
    }
    
}

let cardImageNames:[String] = [
    "image 1", "image 2", "image 3", "image 4" ,"image 5" ,"image 6","image 7", "image 8"
]


func createCardList() -> [Card] {
    var cardList = [Card]()
    
    for imageName in cardImageNames {
        cardList.append(Card(imageName: imageName))
        cardList.append(Card(imageName: imageName))
    }
    
    return cardList
}

let faceDownCard = Card(imageName: "?")

//For letters on the boxed
let cardValues: [String] = [
    "A", "B", "C", "D", "E", "F", "G","H"
]

func createCardList() -> [Card] {
    
    var cardList = [Card]()
    
    for cardValue in cardValues {
        cardList.append(Card(text:cardValue))
        cardList.append(Card(text:cardValue))
    }
    
    return cardList
}

let faceDownCard = Card(text: "?")*/


import Foundation
import SwiftUI

class Card: Identifiable, ObservableObject {
    var id = UUID()
    @Published var isFaceUp = false
    @Published var isMatched = false
    var imageName: String

    init(imageName: String) {
        self.imageName = imageName
    }
    
    func turnOver() {
        self.isFaceUp.toggle()
    }
}

let cardImageNames: [String] = [
    "image 1", "image 2", "image 3", "image 4", "image 5", "image 6", "image 7", "image 8"
]

func createCardList() -> [Card] {
    var cardList = [Card]()
    for imageName in cardImageNames {
        cardList.append(Card(imageName: imageName))
        cardList.append(Card(imageName: imageName))
    }
    return cardList
}
