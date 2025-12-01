//
//  QuizResultsView.swift
//  World History
//
//  Created by Christopher Endress on 12/1/25.
//

import SwiftUI

struct QuizResultsView: View {
    let periodName: String
    let score: Int
    let totalQuestions: Int
    let onRetake: () -> Void

    private var percentage: Int {
        guard totalQuestions > 0 else { return 0 }
        return Int(Double(score) / Double(totalQuestions) * 100)
    }

    var body: some View {
            VStack(spacing: 24) {
                Text(periodName)
                    .font(.title3.weight(.semibold))
                    .foregroundStyle(.secondary)
                    .frame(maxWidth: .infinity, alignment: .leading)

                // Score card
                VStack(spacing: 12) {
                    Text("Your Score")
                        .font(.headline)

                    Text("\(score) / \(totalQuestions)")
                        .font(.system(size: 36, weight: .bold, design: .rounded))

                    Text("\(percentage)%")
                        .font(.title2.weight(.semibold))
                        .foregroundStyle(.secondary)
                }
                .foregroundStyle(Color("TextColor"))
                .frame(maxWidth: .infinity)
                .padding(24)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color("BackgroundColor2"))
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color("TextColor"), lineWidth: 1)
                        )
                )
                .shadow(color: Color.black.opacity(0.08), radius: 8, x: 0, y: 4)

                VStack(alignment: .leading, spacing: 8) {
                    Text("What’s next?")
                        .font(.headline)
                        .foregroundStyle(Color("TextColor"))
                    Text("You can retake the quiz for this period or switch to another period from the menu in the top-right.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .fixedSize(horizontal: false, vertical: true)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer()

                Button(action: {
                    Haptic.medium()
                    onRetake()
                }) {
                    Text("Retake Quiz")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color("BackgroundColor2"))
                        .foregroundStyle(Color("TextColor"))
                        .cornerRadius(16)
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(Color("TextColor"), lineWidth: 1)
                        )
                }
            }
            .padding(.vertical, 16)
    }
}

#Preview {
    NavigationStack {
        QuizResultsView(
            periodName: "Prehistory",
            score: 3,
            totalQuestions: 5,
            onRetake: {}
        )
        .padding()
    }
}
