//
//  ViewController.swift
//  PreworkTip
//
//  Created by Donnie on 2/1/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billAmountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //billAmountLabel.layer.borderWidth = 2.0
        //billAmountLabel.layer.cornerRadius = 6
        
        view.layer.shadowColor = UIColor.black.cgColor
    }

    @IBAction func calculateTip(_ sender: Any) {
        
        // Bill gets the amount from the text field
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Calculates the Total by multiplying the tip by percentage
        let tipPercentage = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update Labels for Tip and Total
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    
    
    }
    
}

