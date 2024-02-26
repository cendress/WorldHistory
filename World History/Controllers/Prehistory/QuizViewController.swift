//
//  QuizViewController.swift
//  World History
//
//  Created by Christopher Endress on 5/23/23.
//

import UIKit

class QuizViewController: UIViewController, OverlayCapable {
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
  private var startButton: UIButton?
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    
    self.navigationController?.setNavigationBarHidden(true, animated: animated)
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    self.navigationController?.setNavigationBarHidden(false, animated: animated)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    styleButtons()
    resultLabel.isHidden = true
    loadNextQuestion()
    addQuizStartOverlay()
    
    startButton?.addTarget(self, action: #selector(removeQuizStartOverlay), for: .touchUpInside)
  }
  
  @objc func removeQuizStartOverlay() {
    if let overlayView = self.view.viewWithTag(999) {
      UIView.animate(withDuration: 0.3, animations: {
        overlayView.alpha = 0
      }) { _ in
        overlayView.removeFromSuperview()
      }
    }
  }
  
  @IBAction func quizButtonPressed(_ sender: UIButton) {
    checkAnswer(sender)
    updateQuiz()
  }
  
  func loadNextQuestion() {
    // Change score label to show question number
    let questionNumber = currentQuestion + 1
    scoreLabel.text = "Question \(questionNumber)/\(quizBrain.questions.count)"
    
    let question = quizBrain.questions[currentQuestion]
    questionLabel.text = question.text
    
    let answerButtons = [choice1Button, choice2Button, choice3Button, choice4Button]
    for (index, button) in answerButtons.enumerated() {
      button?.setTitle(question.shuffledAnswers[index], for: .normal)
      button?.tag = index
    }
    
    progressBar.progress = Float(currentQuestion + 1) / Float(quizBrain.questions.count)
  }
  
  func checkAnswer(_ sender: UIButton) {
    let correctAnswerIndex = quizBrain.questions[currentQuestion].correctAnswerIndex
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
    scoreLabel.text = "Question \(questionNumber)/\(quizBrain.questions.count)"
    currentQuestion += 1
    
    if currentQuestion < quizBrain.questions.count {
      loadNextQuestion()
    } else {
      showEndQuizAlert()
    }
  }
  
  func showEndQuizAlert() {
    let resultInPercentage = Int(round(Double(score) / Double(quizBrain.questions.count) * 100.0))
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
    quizBrain = QuizBrain()
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

//extension UIViewController {
//  func addQuizStartOverlay() {
//    let overlayView = UIView()
//    overlayView.backgroundColor = UIColor.black.withAlphaComponent(0.9)
//    overlayView.tag = 999
//    overlayView.translatesAutoresizingMaskIntoConstraints = false
//    self.view.addSubview(overlayView)
//    
//    let tabBarHeight = self.tabBarController?.tabBar.frame.size.height ?? 0
//    
//    NSLayoutConstraint.activate([
//      overlayView.topAnchor.constraint(equalTo: self.view.topAnchor),
//      overlayView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
//      overlayView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
//      overlayView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: tabBarHeight)
//    ])
//    
//    let startButton = UIButton(type: .system)
//    startButton.setTitle("Start Quiz", for: .normal)
//    startButton.titleLabel?.font = UIFont(name: "Avenir-Heavy", size: 22)
//    startButton.backgroundColor = UIColor(named: "BackgroundColor2")
//    startButton.setTitleColor(UIColor(named: "TextColor"), for: .normal)
//    startButton.layer.borderWidth = 3
//    startButton.layer.borderColor = UIColor(named: "TextColor")?.cgColor
//    startButton.layer.cornerRadius = 10
//    startButton.clipsToBounds = true
//    startButton.translatesAutoresizingMaskIntoConstraints = false
//    overlayView.addSubview(startButton)
//    
//    NSLayoutConstraint.activate([
//      startButton.centerXAnchor.constraint(equalTo: overlayView.centerXAnchor),
//      startButton.centerYAnchor.constraint(equalTo: overlayView.centerYAnchor),
//      startButton.widthAnchor.constraint(equalToConstant: 200),
//      startButton.heightAnchor.constraint(equalToConstant: 50)
//    ])
//    
//    startButton.addTarget(self, action: #selector(removeQuizStartOverlay), for: .touchUpInside)
//  }
//  
//  @objc func removeQuizStartOverlay() {
//    if let overlayView = self.view.viewWithTag(999) {
//      UIView.animate(withDuration: 0.3, animations: {
//        overlayView.alpha = 0
//      }) { _ in
//        overlayView.removeFromSuperview()
//      }
//    }
//  }
//}
