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
    
    private var primaryButtonTitle: String {
        if !isAnswered {
            return "Submit Answer"
        } else if currentIndex == totalQuestions - 1 {
            return "Finish"
        } else {
            return "Next Question"
        }
    }

    var body: some View {
            VStack(spacing: 24) {
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
                        .animation(.easeInOut(duration: 0.25),
                                   value: currentIndex + (isAnswered ? 1 : 0))
                    }
                }

                // Question card
                VStack(alignment: .leading, spacing: 32) {
                    Text(question.prompt)
                        .font(.headline)
                        .foregroundStyle(Color("TextColor"))

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
                                Haptic.selection()
                                onSelectChoice(index)
                            }
                        }
                    }
                }
                .padding(16)
                .background(
                    RoundedRectangle(cornerRadius: 16)
                        .fill(Color("BackgroundColor2"))
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(Color("TextColor"), lineWidth: 1)
                        )
                )
                .shadow(color: Color.black.opacity(0.08), radius: 6, x: 0, y: 3)

                // Explanation
                if isAnswered, let explanation = question.explanation, !explanation.isEmpty {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Explanation")
                            .font(.subheadline.weight(.semibold))
                            .foregroundStyle(Color("TextColor"))
                        Text(explanation)
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                    .transition(.opacity)
                }
                
                Spacer()

                // Buttons
                VStack(spacing: 16) {
                    Button(action: {
                        Haptic.light()
                        onSubmit()
                    }) {
                        Text(primaryButtonTitle)
                            .font(.headline)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(isAnswered ? Color("BackgroundColor2").opacity(0.85) : Color("BackgroundColor2"))
                            .foregroundStyle(Color("TextColor"))
                            .cornerRadius(16)
                    }
                    .disabled(selectedIndex == nil && !isAnswered)
                    .opacity((selectedIndex == nil && !isAnswered) ? 0.5 : 1.0)
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color("TextColor"), lineWidth: 1)
                    )
                    .animation(.easeInOut(duration: 0.2),
                               value: selectedIndex == nil && !isAnswered)

                    if hasQuestions {
                        Button(role: .destructive, action: {
                            Haptic.medium()
                            onRestart()
                        }) {
                            Text("Restart Quiz")
                                .font(.subheadline)
                        }
                    }
                }
            }
            .padding(.vertical, 16)
            .frame(maxWidth: .infinity)
        
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
