//
//  ViewController.swift
//  Example
//
//  Created by William Boles on 19/12/2016.
//  Copyright © 2016 Boles. All rights reserved.
//

import UIKit
import GhostTypewriter

class ViewController: UIViewController {

    @IBOutlet var titleLabel: TypewriterLabel!
    @IBOutlet var descriptionLabel: TypewriterLabel!
    @IBOutlet var endLabel: TypewriterLabel!
    
    // MARK: - ViewLifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.hideTextBeforeTypewritingAnimation = true
        descriptionLabel.hideTextBeforeTypewritingAnimation = true
        endLabel.hideTextBeforeTypewritingAnimation = true
    }
    
    // MARK: ButtonAction
    
    @IBAction func startAnimationButtonPressed(_ sender: Any) {
        titleLabel.cancelTypewritingAnimation()
        descriptionLabel.cancelTypewritingAnimation()
        
        titleLabel.startTypewritingAnimation {
            self.descriptionLabel.startTypewritingAnimation {
                self.endLabel.startTypewritingAnimation(completion: nil)
            }
        }
    }
}

