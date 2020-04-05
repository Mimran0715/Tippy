//
//  ViewController.swift
//  Tippy
//
//  Created by Mal on 4/4/20.
//  Copyright © 2020 Mal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calcTip(_ sender: Any) {
        
        let tipChoices = [0.15, 0.18, 0.20]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipChoices[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
}

