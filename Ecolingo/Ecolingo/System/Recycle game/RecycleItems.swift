//
//  RecycleItems.swift
//  Ecolingo
//
//  Created by Keerthi Siva on 9/12/24.
//

import SwiftUI

struct RecycleItems{
    let id : Int
    let color: Color
}

extension RecycleItems{
    static let all = [
        RecycleItems(id: 1, color: .red),
        RecycleItems(id: 2, color: .blue),
        RecycleItems(id: 3, color: .green),
        RecycleItems(id: 4, color: .black),
        RecycleItems(id: 5, color: .orange),
        RecycleItems(id: 6, color: .purple)
    ]
}
