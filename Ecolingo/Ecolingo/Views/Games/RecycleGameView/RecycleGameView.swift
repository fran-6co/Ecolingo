//
//  RecycleGameView.swift
//  Ecolingo
//
//  Created by Keerthi Siva on 9/12/24.
//

import SwiftUI

struct RecycleGameView: View {
    @StateObject private var viewModel = RecycleViewModel()
    
    let gridItems = [
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10)
    ]
    
    
    //a variable to make it easier to write the drag feature
    var drag: some Gesture {
        DragGesture()
            .onChanged{state in
                viewModel.update(dragPosition: state.location)
            }
            .onEnded{state in
                viewModel.update(dragPosition: state.location)
                viewModel.confirmDrop()
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
                item: viewModel.currentItem,
                position: viewModel.currentposition,
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

