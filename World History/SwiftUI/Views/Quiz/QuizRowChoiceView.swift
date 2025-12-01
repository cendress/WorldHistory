//
//  QuizRowChoiceView.swift
//  World History
//
//  Created by Christopher Endress on 12/1/25.
//

import SwiftUI

struct QuizRowChoiceView: View {
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
    VStack(spacing: 16) {
        QuizRowChoiceView(
            text: "Correct & selected",
            isSelected: true,
            isCorrectChoice: true,
            isIncorrectSelection: false,
            showFeedback: true
        )
        
        QuizRowChoiceView(
            text: "Incorrect selection",
            isSelected: true,
            isCorrectChoice: false,
            isIncorrectSelection: true,
            showFeedback: true
        )
        
        QuizRowChoiceView(
            text: "Neutral selected",
            isSelected: true,
            isCorrectChoice: false,
            isIncorrectSelection: false,
            showFeedback: false
        )
        
        QuizRowChoiceView(
            text: "Not selected",
            isSelected: false,
            isCorrectChoice: false,
            isIncorrectSelection: false,
            showFeedback: false
        )
    }
    .padding()
    .background(Color(.systemGroupedBackground))
}
