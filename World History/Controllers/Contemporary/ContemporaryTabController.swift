//
//  ContemporaryTabController.swift
//  World History
//
//  Created by Christopher Endress on 5/28/23.
//

import UIKit

class ContemporaryTabController: UITabBarController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    selectedIndex = 1
    
    tabBar.layer.shadowOffset = CGSize(width: 0, height: 0)
    tabBar.layer.shadowRadius = 4
    tabBar.layer.shadowColor = UIColor.black.cgColor
    tabBar.layer.shadowOpacity = 0.3
    
  }

}
