//
//  ContemporaryReadViewController.swift
//  World History
//
//  Created by Christopher Endress on 5/28/23.
//

import UIKit

class ContemporaryReadViewController: UIViewController {

  @IBOutlet weak var contemporaryTextLabel: UILabel!
  
  let contemporaryText = ContemporaryReadingText()
  
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
    contemporaryTextLabel.text = contemporaryText.contemporaryText
  }

}
