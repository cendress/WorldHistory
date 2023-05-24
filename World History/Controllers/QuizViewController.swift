//
//  QuizViewController.swift
//  World History
//
//  Created by Christopher Endress on 5/23/23.
//
import UIKit

class QuizViewController: UIViewController {
  @IBOutlet weak var questionLabel: UILabel!
  @IBOutlet weak var progressBar: UIProgressView!
  @IBOutlet weak var choice1Button: UIButton!
  @IBOutlet weak var choice2Button: UIButton!
  @IBOutlet weak var choice3Button: UIButton!
  @IBOutlet weak var choice4Button: UIButton!
  @IBOutlet weak var scoreLabel: UILabel!
  @IBOutlet weak var resultLabel: UILabel!
  
  var quizBrain = QuizBrain()
  var currentQuestion = 0
  var score = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    loadNextQuestion()
  }
  
  @IBAction func quizButtonPressed(_ sender: UIButton) {
    let correctAnswerIndex = quizBrain.questions[currentQuestion].correctAnswerIndex
    
    if sender.tag == correctAnswerIndex {
      score += 1
      resultLabel.text = "Correct answer!"
      resultLabel.textColor = UIColor.green
    } else {
      resultLabel.text = "Incorrect answer."
      resultLabel.textColor = UIColor.red
    }
    
    scoreLabel.text = "Score: \(score)"
    currentQuestion += 1
    
    if currentQuestion < quizBrain.questions.count {
      loadNextQuestion()
    } else {
      currentQuestion = 0
      score = 0
      quizBrain = QuizBrain()
      loadNextQuestion()
    }
  }
  
  func loadNextQuestion() {
    let question = quizBrain.questions[currentQuestion]
    questionLabel.text = question.text
    
    choice1Button.setTitle(question.shuffledAnswers[0], for: .normal)
    choice1Button.tag = 0
    choice2Button.setTitle(question.shuffledAnswers[1], for: .normal)
    choice2Button.tag = 1
    choice3Button.setTitle(question.shuffledAnswers[2], for: .normal)
    choice3Button.tag = 2
    choice4Button.setTitle(question.shuffledAnswers[3], for: .normal)
    choice4Button.tag = 3
    
    progressBar.progress = Float(currentQuestion + 1) / Float(quizBrain.questions.count)
  }
}
