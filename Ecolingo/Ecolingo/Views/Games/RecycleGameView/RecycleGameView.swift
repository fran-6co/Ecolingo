//
//  RecycleGameView.swift
//  Ecolingo
//
//  Created by Keerthi Siva on 9/12/24.
//

import SwiftUI

struct RecycleGameView: View {
    let currentItem = RecycleItems(id: 1, color: .red)
    @State var position = CGPoint(x: 100, y: 100)
    
    let gridItems = [
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10)
    ]
    
    
    //a variable to make it easier to write the drag feature
    var drag: some Gesture {
        DragGesture()
            .onChanged{state in
                position = state.location
            }
            .onEnded{state in
                position = CGPoint(x: 100, y:100)
            }
    }
    
    var body: some View {
        ZStack { // Use ZStack to overlay views
            LazyHGrid(rows: gridItems, spacing: 10) {
                ForEach(0..<5, id: \.self) { _ in
                    Circle()
                        .fill(.blue)
                        .frame(width: 100, height: 100)
                }
            }
            .padding() // Add padding to make grid more visible
            
            DraggableItem(
                item: currentItem,
                position: position,
                gesture: drag
            )
        }
    }
}

struct RecycleGameView_Preview: PreviewProvider {
    static var previews: some View {
        RecycleGameView()
    }
}

