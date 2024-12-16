//
//  RecycleViewModel.swift
//  Ecolingo
//
//  Created by Keerthi Siva on 15/12/24.
//

import SwiftUI

class RecycleViewModel: ObservableObject{
    //MARK: -Coordinates
    private var frames: [Int: CGRect] = [:]
    
    
    //MARK: - Objects in the screen
    var itemContainers = RecycleItems.all
    
    
    //MARK: -Update in the screen
    func update(frame:CGRect, for id: Int){
        frames[id] = frame
    }
}
