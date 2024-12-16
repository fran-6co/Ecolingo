//
//  RecycleGameView.swift
//  Ecolingo
//
//  Created by Keerthi Siva on 9/12/24.
//

import SwiftUI

struct RecycleGameView: View {
    @StateObject private var viewModel = RecycleViewModel()
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
            LazyVGrid(columns: gridItems, spacing: 100) {
                ForEach(viewModel.itemContainers, id: \.id) { item in
                    ItemContainer(
                        item: item,
                        viewModel: viewModel
                    )
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

