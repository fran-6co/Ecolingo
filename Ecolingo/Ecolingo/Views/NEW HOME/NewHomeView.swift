//
//  NewHomeView.swift
//  Ecolingo
//
//  Created by Fran on 05/02/2025.
//

import SwiftUI

struct NewHomeView: View {
    var body: some View {
        HStack(alignment: .top) {
            SidebarComponent()
            ZStack {
                Color(.lightBackground)
                    .ignoresSafeArea()
            }
        }
    }
}

#Preview {
    NewHomeView()
}
