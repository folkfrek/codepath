//
//  ViewController.swift
//  Tuity
//
//  Created by Kyle Folk-Freund on 1/3/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var billLabel: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func Ontap(_ sender: Any) {
        print("Hello")
        
        view.endEditing(true)
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        
        // get bill amount
        let bill = Double(billLabel.text!) ?? 0
        
        //calculate the tip and total
        
        let tipPercentages = [0.1, 0.18, 0.20]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // update tip and total
        
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

