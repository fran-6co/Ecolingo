//
//  HomeView.swift
//  Ecolingo
//
//  Created by Fran Ochoa on 23/10/24.
//
import SwiftUI

struct HomeView: View {
    
    var body: some View {
        VStack {
            HStack {
                Text("Challenges")
                    .font(.largeTitle)
                    .underline()
                Spacer()
            }
            .padding(.horizontal, 30)
            HStack {
                ForEach(ChallengeType.allCases) { type in
                    Button {
                        
                    } label: {
                        Text(type.rawValue)
                    }
                    .buttonStyle(.bordered)
                    .padding(.horizontal)
                }
            }
            ScrollView {
                ForEach(ChallengeTopic.allCases) { topic in
                    VStack(alignment: .leading, spacing: 20) {
                        Text(topic.rawValue)
                            .font(.title)
                            .padding(.horizontal, 50)
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(0..<8) { _ in
                                    ChallengeCardView(challenge: Challenge(name: "Challenge title example", type: .experience, topic: .sustainableFashion, description: "This is a text with the purpose to show the description of the challenge. Here can be explained with long text what the challenge should be and many other things. This is a long text to show also long text format.", userPoints: 25))
//                                    ChallengeCardView(challenge: .preview)
                                        .padding()
                                }
                            }
                        }
//                        .padding(.horizontal)
                    }
                    .frame(maxWidth: .infinity)
                }
            }
        }
    }
}

#Preview {
    MainView()
}
