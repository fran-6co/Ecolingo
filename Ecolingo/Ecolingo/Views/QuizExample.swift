//
//  QuizExample.swift
//  Ecolingo
//
//  Created by Fran Ochoa on 10/10/24.
//

import SwiftUI

struct QuizExample: View {
    @State var question: String
    @State var answer1: String
    @State var answer2: String
    @State var answer3: String
    
    var body: some View {
        VStack {
            Text(question)
                .font(.title)
                .padding(30)
            HStack {
                Image(systemName: "square")
                Text(answer1)
            }
                        HStack {
                Image(systemName: "square")
                Text(answer2)
            }
                        HStack {
                Image(systemName: "square")
                Text(answer3)
            }
            
        }
    }
}

#Preview {
    QuizExample(question: "Do you know about plants?", answer1: "yes", answer2: "no", answer3: "just a bit")
}
