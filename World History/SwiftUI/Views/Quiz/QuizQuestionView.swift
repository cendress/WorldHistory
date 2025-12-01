//
//  QuizQuestionView.swift
//  World History
//
//  Created by Christopher Endress on 12/1/25.
//

import SwiftUI

struct QuizQuestionView: View {
    let periodName: String
    let question: QuizQuestion
    let currentIndex: Int
    let totalQuestions: Int
    let selectedIndex: Int?
    let isAnswered: Bool
    let hasQuestions: Bool

    let onSelectChoice: (Int) -> Void
    let onSubmit: () -> Void
    let onRestart: () -> Void

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {

                // Period label
                Text(periodName)
                    .font(.subheadline.weight(.medium))
                    .foregroundColor(.secondary)

                // Progress
                if hasQuestions {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Question \(currentIndex + 1) of \(totalQuestions)")
                            .font(.subheadline)
                            .foregroundColor(.secondary)

                        ProgressView(
                            value: Double(currentIndex + (isAnswered ? 1 : 0)),
                            total: Double(totalQuestions)
                        )
                    }
                }

                // Question card
                VStack(alignment: .leading, spacing: 16) {
                    Text(question.prompt)
                        .font(.headline)
                        .foregroundColor(.primary)

                    VStack(spacing: 8) {
                        ForEach(question.choices.indices, id: \.self) { index in
                            QuizRowChoiceView(
                                text: question.choices[index],
                                isSelected: selectedIndex == index,
                                isCorrectChoice: isAnswered && index == question.correctIndex,
                                isIncorrectSelection: isAnswered
                                    && selectedIndex == index
                                    && index != question.correctIndex,
                                showFeedback: isAnswered
                            )
                            .onTapGesture {
                                onSelectChoice(index)
                            }
                        }
                    }
                }
                .padding(16)
                .background(
                    RoundedRectangle(cornerRadius: 16, style: .continuous)
                        .fill(Color(.systemBackground))
                )
                .shadow(color: Color.black.opacity(0.08), radius: 6, x: 0, y: 3)

                // Explanation
                if isAnswered, let explanation = question.explanation, !explanation.isEmpty {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Explanation")
                            .font(.subheadline.weight(.semibold))
                        Text(explanation)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    .transition(.opacity)
                }

                // Buttons
                VStack(spacing: 12) {
                    Button(action: onSubmit) {
                        Text(isAnswered ? "Next Question" : "Submit Answer")
                            .font(.headline)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(isAnswered ? Color.blue.opacity(0.85) : Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(12)
                    }
                    .disabled(selectedIndex == nil && !isAnswered)
                    .opacity((selectedIndex == nil && !isAnswered) ? 0.5 : 1.0)

                    if hasQuestions {
                        Button(role: .destructive, action: onRestart) {
                            Text("Restart Quiz")
                                .font(.subheadline)
                        }
                    }
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        }
    }
}

#Preview {
    let sampleQuestion = QuizQuestion(
        prompt: "Prehistory refers to the time period before what major development?",
        choices: [
            "The invention of writing",
            "The discovery of fire",
            "The rise of cities",
            "The beginning of farming"
        ],
        correctIndex: 0,
        explanation: "Prehistory is the time before written records; history begins when we have writing."
    )

    return NavigationStack {
        QuizQuestionView(
            periodName: "Prehistory",
            question: sampleQuestion,
            currentIndex: 0,
            totalQuestions: 3,
            selectedIndex: 1,
            isAnswered: false,
            hasQuestions: true,
            onSelectChoice: { _ in },
            onSubmit: {},
            onRestart: {}
        )
        .padding()
    }
}
