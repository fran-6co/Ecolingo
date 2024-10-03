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
            Tab("🏡Home", systemImage: "tray.and.arrow.down.fill") {
                ExtractedView()
            }
            Tab("Tracking🪴", systemImage: "tray.and.arrow.up.fill") {
                Text("Main view")
            }
            Tab("Sign in🔑", systemImage: "person.crop.circle.fill") {
                Text("Main view")
            }
            Tab("Settings🔧", systemImage: "gear") {
                Text("Main view")
            }
        }
    }
}

#Preview {
    MainView()
}

struct ExtractedView: View {
    var body: some View {
        NavigationStack {
            List {
                Text("Here we can put text")
                Text("like this")
                HStack {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    Spacer()
                    Text("big pictures")
                    Spacer()
                }
                .padding()
                HStack {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 25)
                    Spacer()
                    Text("small pictures")
                    Spacer()
                }
                .padding()
            }
            .navigationTitle("Learning Path...")
        }
//        .padding()
    }
}
