//
//  ViewController.swift
//  TipCalculator
//
//  Created by Jason Fan on 4/12/16.
//  Copyright © 2016 JasonFan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var costTextField: UITextField!
    @IBOutlet weak var finalCostLabel: UILabel!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    
    var mealCost: Float?
    var tipPercent: Float = 20.0   
    
    func finalCost() -> Float {
        return mealCost! + tipPercent / 100.0 * mealCost!
    }
    func updateFinalCostLabel() {
        if mealCost != nil {
            self.finalCostLabel.text = "\(finalCost())"
        } else if (self.costTextField.text!.isEmpty) {
            self.finalCostLabel.text = ""
        } else {
            self.finalCostLabel.text = "Invalid Cost!"
        }
    }
    
    @IBAction func tipSliderChange(sender: UISlider) {
        self.tipPercent = round(sender.value)
        self.tipPercentageLabel.text = "\(Int(tipPercent))"
        updateFinalCostLabel()
    }
    @IBAction func costTextFieldChanged(sender: UITextField) {
        self.mealCost = Float(sender.text!)
        updateFinalCostLabel()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}

