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
        
        let emojis = ["🤩": "Hey super star", "🤯": "My mind is blown"]
        let customMessages = ["Hey super star": ["You're shining bright today!", "Don't forget that you're fabulous", "Keep doing you!"], "My mind is blown": ["Want to talk it out?", "You doing OK?", "I know it's confusing. You can do it!"]]
        let alerts = ["OK", "Bye"]
        
        let selectedEmotion = sender.titleLabel?.text
        
        let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[Int(arc4random_uniform(3))]
        
        let alertController = UIAlertController(title: emojis[selectedEmotion!], message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: alerts[Int(arc4random_uniform(2))], style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
        
    }

}

