//
//  ViewController.swift
//  HelloWorld
//
//  Created by Mariah Cox on 6/29/20.
//  Copyright © 2020 Mariah Cox. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func showMessage(sender: UIButton) {
        let emojiDict = ["💩": "poop",
                             "👻": "ghost",
                             "👍🏼": "thumbs up",
                             "🦄": "unicorn"  ]
           
        
            // The sender is the button that is tapped by the user.
            // Here we store the sender in the selectedButton constant
            let selectedButton = sender

        // Get the emoji from the title label of the selected button
            if let wordToLookup = selectedButton.titleLabel?.text {

                // Get the meaning of the emoji from the dictionary
                // Fill in the code below
                let meaning = emojiDict[wordToLookup]

                // Change the line below to display the meaning of the emoji instead of Hello World
                let alertController = UIAlertController(title: "Meaning", message: meaning, preferredStyle: UIAlertController.Style.alert)

                alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                present(alertController, animated: true, completion: nil)
            }

        }

}
