//
//  DefinitionViewController.swift
//  World History
//
//  Created by Christopher Endress on 5/23/23.
//

import UIKit

class DefinitionViewController: UIViewController {
  let term: VocabularyTerm
  
  init(term: VocabularyTerm) {
    self.term = term
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    title = term.term
    view.backgroundColor = UIColor(named: "BackgroundColor")
    setupLabel()
  }
  
  private func setupLabel() {
    let label = UILabel()
    label.text = term.definition
    label.textColor = UIColor(named: "TextColor")
    label.numberOfLines = 0
    label.font = UIFont(name: "Avenir-Book", size: 22)
    
    let padding: CGFloat = 20
    label.frame = CGRect(x: padding, y: padding, width: view.bounds.width - 2 * padding, height: view.bounds.height - 2 * padding)
    
    label.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    
    view.addSubview(label)
  }
}
