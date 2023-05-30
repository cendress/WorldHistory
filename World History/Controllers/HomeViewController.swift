//
//  ViewController.swift
//  World History
//
//  Created by Christopher Endress on 5/22/23.
//

import UIKit

class HomeViewController: UIViewController {
  
  @IBOutlet var timePeriodButtons: [UIButton]!
  @IBOutlet weak var stackView: UIStackView!
  
  private let buttonStyle = ButtonStyle()
  private let gradientProvider = GradientProvider()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    stackView.layer.cornerRadius = 25.0
    setupButtons()
  }
  
  private func setupButtons() {
    timePeriodButtons.forEach { button in
      buttonStyle.apply(to: button)
      gradientProvider.apply(to: button)
    }
  }
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    
    timePeriodButtons.forEach { button in
      gradientProvider.updateFrame(for: button)
    }
  }
  
  @IBAction func buttonTapped(_ sender: UIButton) {
    guard let index = timePeriodButtons.firstIndex(of: sender) else { return }
    
    let segues = ["goToPrehistory", "goToAncientHistory", "goToPostClassical", "goToModern", "goToContemporary"]
    performSegue(withIdentifier: segues[index], sender: self)
  }
}

class ButtonStyle {
  func apply(to button: UIButton) {
    button.layer.cornerRadius = 25.0
    button.layer.borderWidth = 4
    button.layer.borderColor = UIColor.white.cgColor
    button.layer.shadowColor = UIColor.black.cgColor
    button.layer.shadowOffset = CGSize(width: 5, height: 5)
    button.layer.shadowRadius = 5
    button.layer.shadowOpacity = 1.0
    button.clipsToBounds = true
  }
}

class GradientProvider {
  private var gradients: [UIButton: CAGradientLayer] = [:]
  
  func apply(to button: UIButton) {
    let gradient = CAGradientLayer()
    gradient.frame = button.bounds
    gradient.colors = [UIColor(red: 83/255, green: 113/255, blue: 136/255, alpha: 1).cgColor, UIColor.white.cgColor]
    button.layer.insertSublayer(gradient, at: 0)
    
    gradients[button] = gradient
  }
  
  func updateFrame(for button: UIButton) {
    gradients[button]?.frame = button.bounds
  }
}





