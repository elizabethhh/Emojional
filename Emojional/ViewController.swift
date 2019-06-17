//
//  ViewController.swift
//  Emojional
//
//  Created by Elizabeth Song on 6/14/19.
//  Copyright © 2019 Elizabeth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func showMessage(sender: UIButton) {
        
        let emojis = ["🤩": "super star", "🤯": "mind blown"]
        
        let selectedEmotion = sender.titleLabel?.text
        
        let alertController = UIAlertController(title: "alert", message: emojis[selectedEmotion!], preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
        
    }

}

