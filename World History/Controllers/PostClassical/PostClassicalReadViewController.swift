//
//  PostClassicalReadViewController.swift
//  World History
//
//  Created by Christopher Endress on 5/26/23.
//

import UIKit

class PostClassicalReadViewController: UIViewController {

  @IBOutlet weak var postClassicalTextLabel: UILabel!
  
  let postClassicalText = PostClassicalReadingText()
  
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
    postClassicalTextLabel.text = postClassicalText.postClassicalText
  }
}
