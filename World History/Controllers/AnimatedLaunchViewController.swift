//
//  AnimatedLaunchViewController.swift
//  World History
//
//  Created by Christopher Endress on 5/25/23.
//
import UIKit

class AnimatedLaunchViewController: UIViewController {
  @IBOutlet weak var appLogoImage: UIImageView!
  @IBOutlet weak var launchScreenLabel: UILabel!
  
  var labelTimer: Timer?
  var labelText = "Learn world history."
  var currentLabelIndex = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    launchScreenLabel.text = ""
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    
    UIView.animate(withDuration: 1.0, animations: {
      self.appLogoImage.transform = CGAffineTransform(scaleX: 1.25, y: 1.25)
    }, completion: { [weak self] finished in
      self?.startLabelAnimation()
    })
  }
  
  func startLabelAnimation() {
    labelTimer = Timer.scheduledTimer(withTimeInterval: 0.075, repeats: true) { [weak self] timer in
      guard let self = self else { return }
      
      if self.currentLabelIndex < self.labelText.count {
        let index = self.labelText.index(self.labelText.startIndex, offsetBy: self.currentLabelIndex)
        self.launchScreenLabel.text = "\(self.launchScreenLabel.text ?? "")\(self.labelText[index])"
        self.currentLabelIndex += 1
      } else {
        timer.invalidate()
        self.transitionToHomeViewController()
      }
    }
  }
  
  func transitionToHomeViewController() {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    if let homeViewController = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as? HomeViewController {
      homeViewController.modalTransitionStyle = .crossDissolve
      homeViewController.modalPresentationStyle = .fullScreen
      self.present(homeViewController, animated: true, completion: nil)
    }
  }
}



