//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Josh Ernisse on 1/2/17.
//  Copyright © 2017 Bright Cave. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        
        if emoji == "😀" {
         definitionLabel.text = "This is a Smiley"
        }
        if emoji == "😬" {
            definitionLabel.text = "This is a Grin"
        }
        if emoji == "🤡" {
            definitionLabel.text = "This is a Clown"
        }
        if emoji == "🤠" {
            definitionLabel.text = "This is a Cowboy"
        }
        if emoji == "👹" {
            definitionLabel.text = "This is a Devil Lion"
        }
        if emoji == "💩" {
            definitionLabel.text = "This is Poo!"
        }
        if emoji == "👨🏻‍✈️" {
            definitionLabel.text = "This is a Conductor"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
