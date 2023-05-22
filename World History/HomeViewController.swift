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
    
    for button in timePeriodButtons {
      button.layer.cornerRadius = 35.0
      button.layer.borderWidth = 4
      button.layer.borderColor = UIColor.white.cgColor
      button.layer.shadowColor = UIColor.black.cgColor
      button.layer.shadowOffset = CGSize(width: 5, height: 5)
      button.layer.shadowRadius = 5
      button.layer.shadowOpacity = 1.0
      
      let gradient = CAGradientLayer()
      gradient.frame = button.bounds
      gradient.colors = [UIColor(red: 83/255, green: 113/255, blue: 136/255, alpha: 1).cgColor, UIColor.white.cgColor]
      
      button.layer.insertSublayer(gradient, at: 0)
      button.clipsToBounds = true
    }
  }
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    for button in timePeriodButtons {
      if let gradient = button.layer.sublayers?.first as? CAGradientLayer {
        gradient.frame = button.bounds
      }
    }
  }
}




