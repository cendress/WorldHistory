//
//  ModernReadViewController.swift
//  World History
//
//  Created by Christopher Endress on 5/27/23.
//

import UIKit

class ModernReadViewController: UIViewController {

  @IBOutlet weak var modernTextLabel: UILabel!
  
  let modernText = ModernReadingText()
  
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
    modernTextLabel.text = modernText.modernText
  }

}
