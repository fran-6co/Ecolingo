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
                Text("Here will appear lessons")
            }
            Tab("Sign in🔑", systemImage: "person.crop.circle.fill") {
                Text("USER LOG IN")
            }
            Tab("Profile🔧", systemImage: "gear") {
                Text("SETTINGS")
                Text("LOG IN")
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
                Text("LIST OF TOPICS")
                Text("TO DECIDE IN")
                Text("NEW ISSUE")
                
            }
            .navigationTitle("Topics")
        }
//        Button {
//            QuizExample(question: "Do you know about plants?", answer1: "yes", answer2: "no", answer3: "just a bit")
//        } label: {
//            Text("click here to enter the quiz")
//        }

//        NavigationStack {
//            List {
//                Text("LIST OF TOPICS")
//                Text("TO DECIDE IN")
//                Text("NEW ISSUE")
//            }
//            .navigationTitle("Topics")
//        }
//        .padding()
    }
}
