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
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    stackView.layer.cornerRadius = 25.0
    setupButtons()
  }
  
  private func setupButtons() {
    for button in timePeriodButtons {
      setupButtonStyle(button)
      setupButtonGradient(button)
    }
  }
  
  private func setupButtonStyle(_ button: UIButton) {
    button.layer.cornerRadius = 25.0
    button.layer.borderWidth = 4
    button.layer.borderColor = UIColor.white.cgColor
    button.layer.shadowColor = UIColor.black.cgColor
    button.layer.shadowOffset = CGSize(width: 5, height: 5)
    button.layer.shadowRadius = 5
    button.layer.shadowOpacity = 1.0
    button.clipsToBounds = true
  }
  
  private func setupButtonGradient(_ button: UIButton) {
    let gradient = CAGradientLayer()
    gradient.frame = button.bounds
    gradient.colors = [UIColor(red: 83/255, green: 113/255, blue: 136/255, alpha: 1).cgColor, UIColor.white.cgColor]
    button.layer.insertSublayer(gradient, at: 0)
  }
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    for button in timePeriodButtons {
      if let gradient = button.layer.sublayers?.first as? CAGradientLayer {
        gradient.frame = button.bounds
      }
    }
  }
  
  @IBAction func ancientHistoryButtonTapped(_ sender: UIButton) {
    performSegue(withIdentifier: "goToAncientHistory", sender: self)
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "goToPrehistory" {
      
    } else if segue.identifier == "goToAncientHistory" {
      _ = segue.destination as? AncientTabBarController
    }
  }
}






