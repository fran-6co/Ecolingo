//
//  RecycleViewModel.swift
//  Ecolingo
//
//  Created by Keerthi Siva on 15/12/24.
//

import SwiftUI

class RecycleViewModel: ObservableObject{
    //MARK: Gesture Properties
    let currentItem = RecycleItems(id: 1, color: .red)
    @Published var currentposition = initialPosition
    
    //MARK: -Coordinates
    private static let initialPosition = CGPoint(
        x: UIScreen.main.bounds.midX,
        y: UIScreen.main.bounds.height - 150
    )
    private var frames: [Int: CGRect] = [:]
    
    
    //MARK: - Objects in the screen
    var itemContainers = RecycleItems.all
    
    
    //MARK: -Update in the screen
    func update(frame:CGRect, for id: Int){
        frames[id] = frame
    }
    
    func update(dragPosition: CGPoint){
        currentposition = dragPosition
        if frames[1]!.contains(dragPosition){
            print("You are touching the red item")
        }else{
            print("boooo")
        }
    }
    
    func confirmDrop(){
        resetPosition()
    }
    
    func resetPosition(){
        currentposition = RecycleViewModel.initialPosition
    }
}
