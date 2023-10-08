//
//  CustomAlertView.swift
//  World History
//
//  Created by Christopher Endress on 10/8/23.
//

import UIKit

class CustomAlertView: UIView {
  
  var titleLabel: UILabel!
  var messageLabel: UILabel!
  var confirmButton: UIButton!
  
  init(title: String, message: String) {
    super.init(frame: CGRect(x: 0, y: 0, width: 280, height: 150))
    self.center = CGPoint(x: UIScreen.main.bounds.width/2, y: UIScreen.main.bounds.height/2)
    self.backgroundColor = .white
    self.layer.cornerRadius = 10
    self.layer.shadowColor = UIColor.black.cgColor
    self.layer.shadowOpacity = 0.5
    self.layer.shadowOffset = CGSize(width: 0, height: 2)
    
    titleLabel = UILabel(frame: CGRect(x: 20, y: 20, width: 240, height: 25))
    titleLabel.text = title
    titleLabel.font = UIFont.boldSystemFont(ofSize: 20)
    titleLabel.textAlignment = .center
    self.addSubview(titleLabel)
    
    messageLabel = UILabel(frame: CGRect(x: 20, y: 50, width: 240, height: 50))
    messageLabel.text = message
    messageLabel.font = UIFont.systemFont(ofSize: 16)
    messageLabel.textAlignment = .center
    messageLabel.numberOfLines = 0
    self.addSubview(messageLabel)
    
    confirmButton = UIButton(frame: CGRect(x: 40, y: 110, width: 200, height: 30))
    confirmButton.setTitle("Confirm", for: .normal)
    confirmButton.backgroundColor = .systemBlue
    confirmButton.setTitleColor(.white, for: .normal)
    confirmButton.layer.cornerRadius = 15
    confirmButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    self.addSubview(confirmButton)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  @objc func buttonTapped() {
    self.superview?.removeFromSuperview()
  }
}

