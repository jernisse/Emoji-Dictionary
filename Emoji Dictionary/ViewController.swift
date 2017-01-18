//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Josh Ernisse on 12/19/16.
//  Copyright © 2016 Bright Cave. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var sweettable: UITableView!
    
    var emojis : [Emoji] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        sweettable.dataSource = self
        sweettable.delegate = self
        emojis = makeEmojiArray()
    }
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as!
            DefinitionViewController
        defVC.emoji = sender as! Emoji
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.birthYear = 2016
        emoji1.category = "Smiley"
        emoji1.definition = "A Smiley Face"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😬"
        emoji2.birthYear = 2011
        emoji2.category = "Smiley"
        emoji2.definition = "A Grinning Face"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🤡"
        emoji3.birthYear = 2008
        emoji3.category = "Person"
        emoji3.definition = "A Scary Clown"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🤠"
        emoji4.birthYear = 2001
        emoji4.category = "Smiley"
        emoji4.definition = "A Cowboy"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "👹"
        emoji5.birthYear = 2006
        emoji5.category = "Animal"
        emoji5.definition = "A Devil Lion"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "💩"
        emoji6.birthYear = 2008
        emoji6.category = "Smiley"
        emoji6.definition = "Poo Face"
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "👨🏻‍✈️"
        emoji7.birthYear = 1947
        emoji7.category = "Person"
        emoji7.definition = "A Conductor"

        return [emoji1, emoji2, emoji3, emoji4, emoji5,emoji6, emoji7]
    }

}

