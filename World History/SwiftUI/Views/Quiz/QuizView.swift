//
//  QuizView.swift
//  World History
//
//  Created by Christopher Endress on 11/22/25.
//

import SwiftUI

struct QuizView: View {
    @EnvironmentObject var historySelection: HistorySelection

    @State private var questions: [QuizQuestion] = []
    @State private var currentIndex: Int = 0
    @State private var selectedIndex: Int? = nil
    @State private var isAnswered: Bool = false
    @State private var score: Int = 0
    @State private var showResults: Bool = false

    private var currentQuestion: QuizQuestion? {
        guard currentIndex < questions.count else { return nil }
        return questions[currentIndex]
    }

    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .ignoresSafeArea()
            
            ScrollView {
            Group {
                if showResults {
                    QuizResultsView(
                        periodName: historySelection.selectedPeriod.displayName,
                        score: score,
                        totalQuestions: questions.count,
                        onRetake: {
                            withAnimation {
                                resetQuiz()
                            }
                        }
                    )
                } else if let question = currentQuestion {
                    QuizQuestionView(
                        periodName: historySelection.selectedPeriod.displayName,
                        question: question,
                        currentIndex: currentIndex,
                        totalQuestions: questions.count,
                        selectedIndex: selectedIndex,
                        isAnswered: isAnswered,
                        hasQuestions: !questions.isEmpty,
                        onSelectChoice: { index in
                            guard !isAnswered else { return }
                            selectedIndex = index
                        },
                        onSubmit: {
                            submitAnswer()
                        },
                        onRestart: {
                            withAnimation {
                                resetQuiz()
                            }
                        }
                    )
                } else {
                    EmptyQuizView(periodName: historySelection.selectedPeriod.displayName)
                }
            }
            .navigationTitle("Quiz")
            .padding(.horizontal, 16)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    PeriodToolbarMenuView()
                }
            }
            .onAppear {
                loadQuestions(for: historySelection.selectedPeriod)
            }
            .onChange(of: historySelection.selectedPeriod) { newValue in
                loadQuestions(for: newValue)
            }
        }
        }
    }

    // MARK: - Logic

    private func loadQuestions(for period: HistoryPeriod) {
        let newQuestions = QuizContent.questions(for: period)
        questions = newQuestions
        resetStateForNewPeriod()
    }

    private func resetStateForNewPeriod() {
        currentIndex = 0
        selectedIndex = nil
        isAnswered = false
        score = 0
        showResults = false
    }

    private func resetQuiz() {
        currentIndex = 0
        selectedIndex = nil
        isAnswered = false
        score = 0
        showResults = false
    }

    private func submitAnswer() {
        guard let question = currentQuestion else { return }

        if !isAnswered {
            // First tap: grade the answer
            withAnimation(.easeInOut(duration: 0.25)) {
                isAnswered = true
                if let selectedIndex = selectedIndex,
                   selectedIndex == question.correctIndex {
                    score += 1
                }
            }
        } else {
            // Second tap: move to next question or show results
            goToNextQuestionOrFinish()
        }
    }

    private func goToNextQuestionOrFinish() {
        guard !questions.isEmpty else { return }

        if currentIndex < questions.count - 1 {
            withAnimation {
                currentIndex += 1
                selectedIndex = nil
                isAnswered = false
            }
        } else {
            withAnimation {
                showResults = true
            }
        }
    }
}


#Preview {
    let historySelection = HistorySelection()
    historySelection.selectedPeriod = .prehistory

    return NavigationStack {
        QuizView()
            .environmentObject(historySelection)
    }
}
