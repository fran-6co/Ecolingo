//
//  DraggableItem.swift
//  Ecolingo
//
//  Created by Keerthi Siva on 9/12/24.
//

import SwiftUI

struct DraggableItem<Draggable: Gesture>: View{
    private let size: CGFloat = 100
    let item: RecycleItems
    let position :CGPoint
    let gesture: Draggable
    
    var body: some View{
        Circle()
            .fill(item.color)
            .frame(width: size, height: size)
            .position(position)
            .gesture(gesture)
    }
}

struct DraggableItem_Previews: PreviewProvider{
    static var previews: some View{
        DraggableItem(
            item: RecycleItems.all.first!,
            position: CGPoint(x: 100, y: 100),
            gesture: DragGesture())
    }
}
