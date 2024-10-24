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
            }.padding(.horizontal, 30)
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
                    VStack {
                        Text(topic.rawValue)
                            .font(.title)
                        VStack (alignment: .leading) {
                            HStack {
                                Text("Challenge title, long text will be shown as this")
                                    .multilineTextAlignment(.leading)
                                    .lineLimit(2)
                                    .truncationMode(.tail)
                                    .font(.caption)
                                    .padding(.trailing)
                                Text("+5 XP")
                                    .font(.footnote)
                                    .bold()
                                    .foregroundStyle(.green)
                                    .padding(5)
                                    .background(.ultraThinMaterial)
                            }
                            .frame(width: 200, height: 40)
                            
                            Image(systemName: "carrot.fill")
                                .resizable()
                                .foregroundStyle(.orange)
                                .scaledToFit()
                                .padding()
                                .frame(height: 85)
                                .background()
                        }
                        .frame(width: 220, height: 200)
                        .clipShape(.rect(cornerRadius: 5))
                        .background(.green.opacity(0.1))
                        .shadow(radius: 5, x: 2, y: 2)
                    }
                }
            }
        }
        Spacer()
    }
}

#Preview {
    MainView()
}
