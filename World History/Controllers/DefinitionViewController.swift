//
//  DefinitionViewController.swift
//  World History
//
//  Created by Christopher Endress on 5/23/23.
//
import UIKit

class DefinitionViewController: UIViewController {
  var term: String?
  var definition: String?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    title = term
    view.backgroundColor = UIColor(named: "BackgroundColor")
    
    let label = UILabel()
    label.text = definition
    label.textColor = UIColor(named: "TextColor")
    label.numberOfLines = 0
    label.font = UIFont(name: "Avenir-Book", size: 20)
    
    let padding: CGFloat = 20
    label.frame = CGRect(x: padding, y: padding, width: view.bounds.width - 2 * padding, height: view.bounds.height - 2 * padding)
    label.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    
    view.addSubview(label)
  }
}


