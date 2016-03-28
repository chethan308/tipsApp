//
//  ViewController.swift
//  tips
//
//  Created by cchannap on 3/27/16.
//  Copyright (c) 2016 cchannap. All rights reserved.
//

import UIKit

var tipPercentages = [18, 20, 25]

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        
        for index in 0...2 {
            [tipControl .setTitle(tipPercentages[index].description, forSegmentAtIndex: index)]
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        var tipPercentage = Double(tipPercentages[tipControl.selectedSegmentIndex])/100
        
        var billAmount = billField.text._bridgeToObjectiveC().doubleValue
        var tip = billAmount * Double(tipPercentage)
        var total = billAmount + tip

        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    override func viewDidAppear(animated: Bool) {
        
    }
}

