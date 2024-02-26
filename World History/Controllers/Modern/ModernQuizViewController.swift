//
//  ModernQuizViewController.swift
//  World History
//
//  Created by Christopher Endress on 5/27/23.
//

import UIKit

class ModernQuizViewController: UIViewController {

  @IBOutlet weak var questionLabel: UILabel!
  @IBOutlet weak var progressBar: UIProgressView!
  @IBOutlet weak var choice1Button: UIButton!
  @IBOutlet weak var choice2Button: UIButton!
  @IBOutlet weak var choice3Button: UIButton!
  @IBOutlet weak var choice4Button: UIButton!
  @IBOutlet weak var scoreLabel: UILabel!
  @IBOutlet weak var resultLabel: UILabel!
  
  var modernQuizBrain = ModernQuizBrain()
  var currentQuestion = 0
  var score = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    styleButtons()
    resultLabel.isHidden = true
    loadNextQuestion()
  }
  
  @IBAction func quizButtonPressed(_ sender: UIButton) {
    checkAnswer(sender)
    updateQuiz()
  }
  
  func loadNextQuestion() {
    let questionNumber = currentQuestion + 1
    scoreLabel.text = "Question \(questionNumber)/\(modernQuizBrain.questions.count)"
    let question = modernQuizBrain.questions[currentQuestion]
    questionLabel.text = question.text
    
    let answerButtons = [choice1Button, choice2Button, choice3Button, choice4Button]
    for (index, button) in answerButtons.enumerated() {
      button?.setTitle(question.shuffledAnswers[index], for: .normal)
      button?.tag = index
    }
    
    progressBar.progress = Float(currentQuestion + 1) / Float(modernQuizBrain.questions.count)
  }
  
  
  func checkAnswer(_ sender: UIButton) {
    let correctAnswerIndex = modernQuizBrain.questions[currentQuestion].correctAnswerIndex
    if sender.tag == correctAnswerIndex {
      score += 1
      showResult(correct: true)
    } else {
      showResult(correct: false)
    }
  }
  
  func showResult(correct: Bool) {
    resultLabel.isHidden = false
    resultLabel.text = correct ? "Correct!" : "Incorrect!"
    resultLabel.textColor = correct ? UIColor.green : UIColor.red
    
    DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
      self.resultLabel.isHidden = true
    }
  }
  
  func updateQuiz() {
    let questionNumber = currentQuestion + 1
    scoreLabel.text = "Question \(questionNumber)/\(modernQuizBrain.questions.count)"
    currentQuestion += 1
    
    if currentQuestion < modernQuizBrain.questions.count {
      loadNextQuestion()
    } else {
      showEndQuizAlert()
    }
  }
  
  func showEndQuizAlert() {
    let resultInPercentage = Int(round(Double(score) / Double(modernQuizBrain.questions.count) * 100.0))
    let customAlertView = CustomAlertView(title: "Quiz Ended", message: "You scored \(resultInPercentage)%")
    
    let overlayView = UIView(frame: UIScreen.main.bounds)
    overlayView.backgroundColor = UIColor.black.withAlphaComponent(0.4)
    overlayView.addSubview(customAlertView)
    
    if let windowScene = UIApplication.shared.connectedScenes.first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene,
       let currentWindow = windowScene.windows.first {
      currentWindow.addSubview(overlayView)
    }
    
    customAlertView.confirmButton.addTarget(self, action: #selector(resetQuiz), for: .touchUpInside)
  }
  
  @objc func resetQuiz() {
    currentQuestion = 0
    score = 0
    modernQuizBrain = ModernQuizBrain()
    loadNextQuestion()
  }
  
  func styleButtons() {
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
  }

}
