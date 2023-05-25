//
//  Question.swift
//  World History
//
//  Created by Christopher Endress on 5/24/23.
//

import Foundation

struct Question {
  let text: String
  var answers: [String]
  let correctAnswer: String
  
  init(text: String, answers: [String], correctAnswer: String) {
    self.text = text
    self.answers = answers
    self.correctAnswer = correctAnswer
    self.answers.shuffle()
  }
  
  var shuffledAnswers: [String] {
    return answers
  }
  
  var correctAnswerIndex: Int? {
    return answers.firstIndex(of: correctAnswer)
  }
}
