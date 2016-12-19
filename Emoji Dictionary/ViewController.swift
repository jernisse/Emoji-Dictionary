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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        sweettable.dataSource = self
        sweettable.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

