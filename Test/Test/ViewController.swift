//
//  ViewController.swift
//  Test
//
//  Created by Jason Fan on 4/10/16.
//  Copyright © 2016 JasonFan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bg1: UIImageView!
    @IBOutlet weak var bg2: UIImageView!
    @IBOutlet weak var button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeBackground(sender: AnyObject) {
        bg1.hidden = true
        bg2.hidden = false
    }
    
}

