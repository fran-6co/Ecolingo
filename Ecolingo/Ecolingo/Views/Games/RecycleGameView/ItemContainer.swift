//
//  ItemContainer.swift
//  Ecolingo
//
//  Created by Keerthi Siva on 9/12/24.
//

import SwiftUI

struct ItemContainer : View{
    let item : RecycleItems
    @ObservedObject var viewModel: RecycleViewModel
    private let size: CGFloat = 100
    
    var body: some View{
        Circle()
            .fill(item.color)
            .frame(width: 100, height: 100)
            .overlay{
                GeometryReader{ proxy -> Color in
                    viewModel.update(frame: proxy.frame(in: .global), for: item.id)
                    
                    return Color.clear
                }
            }
    }
}

struct ItemContainer_Previews: PreviewProvider{
    static var previews: some View{
        ItemContainer(
            item: RecycleItems.all.first!,
            viewModel: RecycleViewModel()
        )
    }
}
