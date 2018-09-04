//
//  ViewController.swift
//  BlinkingLabel
//
//  Created by ganeshsourcebits on 09/03/2018.
//  Copyright (c) 2018 ganeshsourcebits. All rights reserved.
//

import UIKit
import BlinkingLabel

class ViewController: UIViewController {

    var isBlinking = false
    let blinkingLabel = BlinkingLabel(frame: CGRect(x: 100, y: 100, width: 200, height: 30))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup the BlinkingLabel
        blinkingLabel.text = "I blink!"
        blinkingLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(blinkingLabel)
        blinkingLabel.startBlinking()
        isBlinking = true
        
        // Create a UIButton to toggle the blinking
        let toggleButton = UIButton(frame: CGRect(x: 10, y: 60, width: 125, height: 30))
        toggleButton.setTitle("Toggle Blinking", for: .normal)
        toggleButton.setTitleColor(UIColor.red, for: .normal)
        toggleButton.addTarget(self, action: #selector(toggleBlinking), for: .touchUpInside)
        view.addSubview(toggleButton)
        
        let launchSDKButton = UIButton(frame: CGRect(x: 150, y: 300, width: 200, height: 30))
        launchSDKButton.setTitle("launchSDKButton", for: .normal)
        launchSDKButton.setTitleColor(UIColor.red, for: .normal)
        launchSDKButton.addTarget(self, action: #selector(launchSDK), for: .touchUpInside)
        view.addSubview(launchSDKButton)
        
    }

    @objc func toggleBlinking() {
        if (isBlinking) {
            blinkingLabel.stopBlinking()
        } else {
            blinkingLabel.startBlinking()
        }
        isBlinking = !isBlinking
        
        // Proposed file changes
    }

    @objc func launchSDK() {
        let cc = MainViewController()
        self.present(cc, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

