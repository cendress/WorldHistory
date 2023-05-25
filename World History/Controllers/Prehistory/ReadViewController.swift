//
//  ReadViewController.swift
//  World History
//
//  Created by Christopher Endress on 5/23/23.
//

import UIKit

class ReadViewController: UIViewController {
  
  @IBOutlet weak var textLabel: UILabel!
  
  let text = ReadingText()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupTabBar()
    setupTextLabel()
  }
  
  private func setupTabBar() {
    guard let tabBar = tabBarController?.tabBar else { return }
    
    tabBar.isTranslucent = false
    tabBar.barTintColor = UIColor(named: "BackgroundColor2")
  }
  
  private func setupTextLabel() {
    textLabel.text = text.prehistoryText
  }
}

