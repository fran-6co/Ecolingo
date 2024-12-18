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
                                    ChallengeCardView(challenge: .preview)
                                        .padding()
                                }
                            }
                        }
                        .padding(.horizontal)
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
