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
      textLabel.text = text.prehistoryText
    }
}
