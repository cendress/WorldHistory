//
//  OverlayCapable.swift
//  World History
//
//  Created by Christopher Endress on 2/26/24.
//

import UIKit

protocol OverlayCapable {
  func addQuizStartOverlay()
}

extension OverlayCapable where Self: UIViewController {
  
  func addQuizStartOverlay() {
    let overlayView = UIView()
    overlayView.backgroundColor = UIColor.black.withAlphaComponent(0.9)
    overlayView.tag = 999
    overlayView.translatesAutoresizingMaskIntoConstraints = false
    self.view.addSubview(overlayView)
    
    let tabBarHeight = self.tabBarController?.tabBar.frame.size.height ?? 0
    
    NSLayoutConstraint.activate([
      overlayView.topAnchor.constraint(equalTo: self.view.topAnchor),
      overlayView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
      overlayView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
      overlayView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: tabBarHeight)
    ])
    
    let startButton = UIButton(type: .system)
    startButton.setTitle("Start Quiz", for: .normal)
    startButton.titleLabel?.font = UIFont(name: "Avenir-Heavy", size: 22)
    startButton.backgroundColor = UIColor(named: "BackgroundColor2")
    startButton.setTitleColor(UIColor(named: "TextColor"), for: .normal)
    startButton.layer.borderWidth = 3
    startButton.layer.borderColor = UIColor(named: "TextColor")?.cgColor
    startButton.layer.cornerRadius = 10
    startButton.clipsToBounds = true
    startButton.translatesAutoresizingMaskIntoConstraints = false
    overlayView.addSubview(startButton)
    
    NSLayoutConstraint.activate([
      startButton.centerXAnchor.constraint(equalTo: overlayView.centerXAnchor),
      startButton.centerYAnchor.constraint(equalTo: overlayView.centerYAnchor),
      startButton.widthAnchor.constraint(equalToConstant: 200),
      startButton.heightAnchor.constraint(equalToConstant: 50)
    ])
  }
}
