//
//  SidebarComponent.swift
//  Ecolingo
//
//  Created by Fran on 05/02/2025.
//

import SwiftUI

struct SidebarComponent: View {
    var body: some View {
        VStack {
            Image(.newEcolingo)
                .resizable()
                .scaledToFit()
                .frame(width: 120)
                .padding(.horizontal, 15)
                .padding(.vertical, 30)
            VStack(spacing: 50) {
                ForEach(tabs) { tabs in
                    Button {
                        
                    } label: {
                        VStack {
                            Image(tabs.icon)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 70)
                            Text(tabs.name)
                        }
                    }
                    .buttonStyle(.plain)
                }
            }
            Spacer()
        }
        .background(.sidebarBackground)
    }
}

#Preview {
    HStack{
        SidebarComponent()
        Spacer()
        Color.lightBackground
    }
}
