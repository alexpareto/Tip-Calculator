//
//  ViewController.swift
//  TipCalculator
//
//  Created by Alex Pareto on 8/12/16.
//  Copyright © 2016 Alex Pareto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var percentage: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onTap(_ sender: AnyObject) {
        
        view.endEditing(true);
    }
    
    @IBAction func calculateTip(_ sender: AnyObject) {
        let bill = Double(billField.text!) ?? 0
        
        var tipPercentage = 0.2;
        if (percentage.selectedSegmentIndex == 0)
        {
            tipPercentage = 0.15
        }
        else if (percentage.selectedSegmentIndex == 1)
        {
            tipPercentage = 0.18
        }
        else if (percentage.selectedSegmentIndex == 2)
        {
            tipPercentage = 0.2
        }
    
        let tip = bill * tipPercentage
        let total = bill + tip
        
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
    }
}

