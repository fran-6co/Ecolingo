//
//  ContentView.swift
//  Ecolingo
//
//  Created by Fran Ochoa on 30/9/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            Tab("GAME PROTOTYPE", systemImage: "tray.and.arrow.down.fill") {
                GamePrototypeView()
            }
            Tab("🏡  Home", systemImage: "tray.and.arrow.down.fill") {
                HomeView()
            }
            Tab("🪴  My garden", systemImage: "tray.and.arrow.up.fill") {
                Text("Here will appear lessons")
            }
            Tab("📝  My challenges", systemImage: "person.crop.circle.fill") {
                Text("USER LOG IN")
            }
            Tab("🔧  Profile", systemImage: "gear") {
                Text("SETTINGS")
                Text("LOG IN")
            }
        }
    }
}

#Preview {
    MainView()
}



