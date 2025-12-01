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
        
        return isSelected ? Color("TextColor") : Color.black.opacity(0.1)
    }
    
    private var backgroundColor: Color {
        if showFeedback {
            if isCorrectChoice { return Color.green.opacity(0.1) }
            if isIncorrectSelection { return Color.red.opacity(0.05) }
        }
        return isSelected ? Color("TextColor").opacity(0.1) : Color("BackgroundColor2")
    }
    
    var body: some View {
        HStack {
            Text(text)
                .font(.subheadline)
                .foregroundStyle(Color("TextColor"))
            
            Spacer()
            
            if showFeedback {
                if isCorrectChoice {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundStyle(.green)
                } else if isIncorrectSelection {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundStyle(.red)
                }
            } else if isSelected {
                Image(systemName: "checkmark.circle")
                    .foregroundStyle(Color("TextColor"))
            }
        }
        .padding(.vertical, 14)
        .padding(.horizontal, 12)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(backgroundColor)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 16)
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
