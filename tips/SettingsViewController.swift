//
//  SettingsViewController.swift
//  tips
//
//  Created by cchannap on 3/27/16.
//  Copyright (c) 2016 cchannap. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var tip1Label: UILabel!
    @IBOutlet weak var tip2Label: UILabel!
    @IBOutlet weak var tip3Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func tip1ValueChanged(sender: UISlider) {
        var tip1Value = Int(sender.value)
        
        tip1Label.text = "\(tip1Value)"
        tipPercentages[0] = Int(sender.value)
    }
    
    @IBAction func tip2ValueChanged(sender: UISlider) {
        var tip2Value = Int(sender.value)
        
        tip2Label.text = "\(tip2Value)"
        tipPercentages[1] = Int(sender.value)
    }
    
    @IBAction func tip3ValueChanged(sender: UISlider) {
        var tip3Value = Int(sender.value)
        
        tip3Label.text = "\(tip3Value)"
        tipPercentages[2] = Int(sender.value)
    }
}
