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
    
    let buttons = [choice1Button, choice2Button, choice3Button, choice4Button]
    
    for button in buttons {
      button?.layer.cornerRadius = 15.0
      button?.layer.borderWidth = 4
      button?.layer.borderColor = UIColor.white.cgColor
      button?.layer.shadowColor = UIColor.black.cgColor
      button?.layer.shadowOffset = CGSize(width: 5, height: 5)
      button?.layer.shadowRadius = 5
      button?.layer.shadowOpacity = 1.0
      button?.clipsToBounds = true
    }
    
    resultLabel.isHidden = true
    loadNextQuestion()
  }
  
  @IBAction func quizButtonPressed(_ sender: UIButton) {
    let correctAnswerIndex = quizBrain.questions[currentQuestion].correctAnswerIndex
    
    if sender.tag == correctAnswerIndex {
      score += 1
      resultLabel.text = "Correct!"
      resultLabel.textColor = UIColor.green
    } else {
      resultLabel.text = "Incorrect!"
      resultLabel.textColor = UIColor.red
    }
    
    resultLabel.isHidden = false
    
    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
      self.resultLabel.isHidden = true
    }
    
    scoreLabel.text = "Score: \(score)"
    currentQuestion += 1
    
    if currentQuestion < quizBrain.questions.count {
      loadNextQuestion()
    } else {
      let resultInPercentage = Int(round(Double(score) / Double(quizBrain.questions.count) * 100.0))
      let alertController = UIAlertController(title: "Quiz Ended", message: "You scored \(resultInPercentage)%", preferredStyle: .alert)
      let restartAction = UIAlertAction(title: "Ok", style: .default) { (_) in
        self.currentQuestion = 0
        self.score = 0
        self.quizBrain = QuizBrain()
        self.loadNextQuestion()
      }
      alertController.addAction(restartAction)
      self.present(alertController, animated: true, completion: nil)
    }
  }
  
  
  func loadNextQuestion() {
    scoreLabel.text = "Score: \(score)"
    
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
