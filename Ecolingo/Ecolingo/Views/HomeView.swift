//
//  HomeView.swift
//  Ecolingo
//
//  Created by Fran Ochoa on 23/10/24.
//
import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            List {
                Text("LIST OF TOPICS")
                Text("TO DECIDE IN")
                Text("NEW ISSUE")
                
            }
            .navigationTitle("Topics")
        }
    }
}

#Preview {
    MainView()
}
