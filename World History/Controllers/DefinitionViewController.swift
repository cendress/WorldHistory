//
//  DefinitionViewController.swift
//  World History
//
//  Created by Christopher Endress on 5/23/23.
//

import UIKit

class DefinitionViewController: UIViewController {
  let term: VocabularyTerm
  let textView = UITextView()
  
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
    setupTextView()
    setupHideShowButton()
  }
  
  private func setupTextView() {
    textView.text = term.definition
    textView.textColor = UIColor(named: "TextColor")
    textView.font = UIFont(name: "Avenir-Book", size: 22)
    textView.backgroundColor = UIColor(named: "BackgroundColor")
    textView.translatesAutoresizingMaskIntoConstraints = false
    textView.isEditable = false
    
    view.addSubview(textView)
    
    let padding: CGFloat = 20
    NSLayoutConstraint.activate([
      textView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: padding),
      textView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -padding),
      textView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: padding),
      textView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -padding)
    ])
  }
  
  private func setupHideShowButton() {
    let hideShowButton = UIBarButtonItem(title: "Hide", style: .plain, target: self, action: #selector(hideShowTapped))
    navigationItem.rightBarButtonItem = hideShowButton
  }
  
  @objc private func hideShowTapped() {
    if navigationItem.rightBarButtonItem?.title == "Hide" {
      navigationItem.rightBarButtonItem?.title = "Show"
      textView.isHidden = true
    } else {
      navigationItem.rightBarButtonItem?.title = "Hide"
      textView.isHidden = false
    }
  }
}




