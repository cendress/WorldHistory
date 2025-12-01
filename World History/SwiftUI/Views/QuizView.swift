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
    
    private var progress: Double {
        guard !questions.isEmpty else { return 0 }
        return Double(currentIndex) / Double(questions.count)
    }
    
    var body: some View {
        Group {
            if showResults {
                quizResultsView
            } else if let question = currentQuestion {
                quizQuestionView(question: question)
            }
        }
        .navigationTitle("Quiz")
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
    
    // MARK: - Views
    
    private func quizQuestionView(question: QuizQuestion) -> some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                
                // Period label
                Text(historySelection.selectedPeriod.displayName)
                    .font(.subheadline.weight(.medium))
                    .foregroundColor(.secondary)
                
                // Progress
                if !questions.isEmpty {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Question \(currentIndex + 1) of \(questions.count)")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        
                        ProgressView(value: Double(currentIndex + (isAnswered ? 1 : 0)),
                                     total: Double(questions.count))
                    }
                }
                
                // Question card
                VStack(alignment: .leading, spacing: 16) {
                    Text(question.prompt)
                        .font(.headline)
                        .foregroundColor(.primary)
                    
                    VStack(spacing: 8) {
                        ForEach(question.choices.indices, id: \.self) { index in
                            QuizChoiceRow(
                                text: question.choices[index],
                                isSelected: selectedIndex == index,
                                isCorrectChoice: isAnswered && index == question.correctIndex,
                                isIncorrectSelection: isAnswered
                                && selectedIndex == index
                                && index != question.correctIndex,
                                showFeedback: isAnswered
                            )
                            .onTapGesture {
                                guard !isAnswered else { return }
                                selectedIndex = index
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
                    Button {
                        submitAnswer()
                    } label: {
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
                    
                    if !questions.isEmpty {
                        Button(role: .destructive) {
                            withAnimation {
                                resetQuiz()
                            }
                        } label: {
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
    
    private var quizResultsView: some View {
        ScrollView {
            VStack(spacing: 24) {
                Text("Quiz Complete")
                    .font(.largeTitle.weight(.bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text(historySelection.selectedPeriod.displayName)
                    .font(.title3.weight(.semibold))
                    .foregroundColor(.secondary)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                // Score card
                VStack(spacing: 12) {
                    Text("Your Score")
                        .font(.headline)
                    
                    Text("\(score) / \(questions.count)")
                        .font(.system(size: 36, weight: .bold, design: .rounded))
                    
                    let percent = questions.isEmpty
                    ? 0
                    : Int(Double(score) / Double(questions.count) * 100)
                    
                    Text("\(percent)%")
                        .font(.title2.weight(.semibold))
                        .foregroundColor(.secondary)
                }
                .frame(maxWidth: .infinity)
                .padding(24)
                .background(
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .fill(Color(.systemBackground))
                )
                .shadow(color: Color.black.opacity(0.08), radius: 8, x: 0, y: 4)
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("What’s next?")
                        .font(.headline)
                    Text("You can retake the quiz for this period or switch to another period from the menu in the top-right.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .fixedSize(horizontal: false, vertical: true)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Button {
                    withAnimation {
                        resetQuiz()
                    }
                } label: {
                    Text("Retake Quiz")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
                
                Spacer(minLength: 24)
            }
            .padding()
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
            isAnswered = true
            if let selectedIndex = selectedIndex,
               selectedIndex == question.correctIndex {
                score += 1
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

// Single choice row with feedback styling
struct QuizChoiceRow: View {
    let text: String
    let isSelected: Bool
    let isCorrectChoice: Bool
    let isIncorrectSelection: Bool
    let showFeedback: Bool
    
    private var borderColor: Color {
        if showFeedback {
            if isCorrectChoice { return Color.green }
            if isIncorrectSelection { return Color.red }
        }
        return isSelected ? Color.blue : Color.black.opacity(0.1)
    }
    
    private var backgroundColor: Color {
        if showFeedback {
            if isCorrectChoice { return Color.green.opacity(0.1) }
            if isIncorrectSelection { return Color.red.opacity(0.05) }
        }
        return isSelected ? Color.blue.opacity(0.1) : Color(.systemBackground)
    }
    
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            Text(text)
                .font(.subheadline)
                .foregroundColor(.primary)
                .multilineTextAlignment(.leading)
            
            Spacer()
            
            if showFeedback {
                if isCorrectChoice {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(.green)
                } else if isIncorrectSelection {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.red)
                }
            } else if isSelected {
                Image(systemName: "checkmark.circle")
                    .foregroundColor(.blue)
            }
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 12)
        .background(
            RoundedRectangle(cornerRadius: 12, style: .continuous)
                .fill(backgroundColor)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 12, style: .continuous)
                .stroke(borderColor, lineWidth: 1.5)
        )
        .shadow(color: Color.black.opacity(0.06), radius: 3, x: 0, y: 2)
        .contentShape(Rectangle())
    }
}

#Preview {
    QuizView()
}
