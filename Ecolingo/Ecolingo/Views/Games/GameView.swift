//
//  GameView.swift
//  Ecolingo
//
//  Created by Keerthi Siva on 29/10/24.
//

import SwiftUI

struct GameView: View {
    private var fourColumnGrid = [GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())]
    
    @State var cards = createCardList().shuffled()
    @State var MatchedCards = [Card]()
    @State var UserChoices = [Card]()
    
    
    var body: some View {
        GeometryReader{geo in
            VStack{
                Text("Memory Game")
                    .font(.largeTitle)
                
                LazyVGrid(columns: fourColumnGrid, spacing: 10) {
                    ForEach(cards) { card in GamePrototypeView(card: card,
                                                 width: Int(geo.size.width / 4 - 10),
                                                 MatchedCards: $MatchedCards,
                                                 UserChoices: $UserChoices)
                                    }
                                }
                
                VStack {
                                    Text("Match these pictures to win:")
                                        .font(.headline)
                                    
                                    LazyVGrid(columns: fourColumnGrid, spacing: 5) {
                                        ForEach(cardValues, id: \.self) { cardValue in
                                            if !MatchedCards.contains(where: { $0.text == cardValue }) {
                                                Text(cardValue)
                                                    .font(.system(size: 40))
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

