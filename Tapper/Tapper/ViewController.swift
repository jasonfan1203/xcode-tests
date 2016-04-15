//
//  ViewController.swift
//  Tapper
//
//  Created by Jason Fan on 4/12/16.
//  Copyright © 2016 JasonFan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // variables
    var maxTaps:Int = 0
    var currentTap:Int = 0
    
    // outlets
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var play: UIButton!
    @IBOutlet weak var tap: UIButton!
    @IBOutlet weak var showTaps: UILabel!
    @IBOutlet weak var finale: UILabel!
    @IBOutlet weak var restart: UIButton!
    
    @IBAction func onPlayButtonPresses(sender: UIButton!) {
        if textField.text != nil && textField.text != "" {
            
            logo.hidden = true
            textField.hidden = true
            play.hidden = true
            tap.hidden = false
            showTaps.hidden = false
            finale.hidden = true
            restart.hidden = true
            
            maxTaps = Int(textField.text!)!
            currentTap = 0
            
            updateTapCount()
        }
    }
    
    @IBAction func onTapButtonPresses(sender: UIButton!) {
        currentTap += 1
        updateTapCount()
        
        if isGameOver() {
            showFinale()
        }
    }
    
    @IBAction func restartGame(sender: UIButton!) {
        logo.hidden = false
        textField.hidden = false
        play.hidden = false
        tap.hidden = true
        showTaps.hidden = true
        finale.hidden = true
        restart.hidden = true
        
        maxTaps = 0
        currentTap = 0
        textField.text = nil
    }
    
    func showFinale() {
        logo.hidden = true
        textField.hidden = true
        play.hidden = true
        tap.hidden = true
        showTaps.hidden = true
        finale.hidden = false
        restart.hidden = false
        
        finale.text = "GOT FUCKED \(currentTap) TIMES"
    }
    
    func isGameOver() -> Bool {
        if maxTaps <= currentTap {
        return true
        }
        return false
    }
    
    func updateTapCount() {
        showTaps.text = "\(currentTap) FUCKS"
    }
}

