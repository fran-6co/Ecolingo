//
//  GameView.swift
//  Ecolingo
//
//  Created by Keerthi Siva on 29/10/24.
//

import SwiftUI

struct GameView: View {
    private var fourColumnGrid = [
        GridItem(.flexible()), GridItem(.flexible()),
        GridItem(.flexible()), GridItem(.flexible())
    ]
    
    @State var cards = createCardList()
    @State var MatchedCards = [Card]()
    @State var UserChoices = [Card]()
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                Text("Memory Game")
                    .font(.largeTitle)
                
                LazyVGrid(columns: fourColumnGrid, spacing: 10) {
                    ForEach(cards) { card in
                        GamePrototypeView(card: card,
                                          width: Int(geo.size.width / 4 - 10),
                                          MatchedCards: $MatchedCards,
                                          UserChoices: $UserChoices)
                    }
                }
                
                VStack {
                    Text("Match these pictures to win:")
                        .font(.headline)
                    
                    LazyVGrid(columns: fourColumnGrid, spacing: 5) {
                        ForEach(cardPairs.map { $0.animalName }, id: \.self) { animalName in
                            if !MatchedCards.contains(where: { $0.animalName == animalName }) {
                                Text(animalName)
                                    .font(.system(size: 30))
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    GameView()
}
