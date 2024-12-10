//
//  ItemContainer.swift
//  Ecolingo
//
//  Created by Keerthi Siva on 9/12/24.
//

import SwiftUI

struct ItemContainer : View{
    var body: some View{
        Circle()
            .fill(.blue)
            .frame(width: 100, height: 100)
            .overlay{
                GeometryReader{
                    
                }
            }
    }
}

struct ItemContainer_Previews: PreviewProvider{
    static var previews: some View{
        ItemContainer()
    }
}
