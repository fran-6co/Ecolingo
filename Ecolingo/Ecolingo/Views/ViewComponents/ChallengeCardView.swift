//
//  ChallengeCardView.swift
//  Ecolingo
//
//  Created by Fran Ochoa on 25/10/24.
//
import SwiftUI

struct ChallengeCardView: View {
    let challenge: Challenge
    
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                Text(challenge.name)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .truncationMode(.tail)
                Spacer()
                Text("+\(challenge.userPoints) XP")
                    .monospaced()
                    .bold()
                    .foregroundStyle(.green)
                    .padding(8)
                    .background(.gray.opacity(0.1), in: Capsule())
                
            }
            .frame(width: 250, height: 50)
            
            Image(systemName: "carrot.fill")
                .resizable()
                .foregroundStyle(.orange)
                .scaledToFit()
                .padding()
                .frame(height: 100)
                .background()
            GroupBox(label: Label("Description", systemImage: "laser.burst")) {
                ScrollView(.vertical, showsIndicators: true) {
                    Text(challenge.description)
                        .font(.caption)
                }
                .frame(height: 75)
            }
//            .border(Color.pink)
        }
        .padding()
        .frame(width: 280, height: 320)
        .background(.green.opacity(0.1), in: RoundedRectangle(cornerRadius: 20))
    }
}

#Preview {
    ChallengeCardView(challenge: .preview)
}
