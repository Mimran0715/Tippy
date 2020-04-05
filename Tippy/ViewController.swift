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
    var tipPercentage = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
        let tipChoices = [0.15, 0.18, 0.20]
        let defaults = UserDefaults.standard
        var tipPercentage = defaults.double(forKey: "defaultTip")
        var count = 0
        for x in tipChoices{
            if x != tipPercentage{
                count = count + 1
            }
        }
        
        //tipControl.setEnabled(_ ,forSegmentAt: count)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did disappear")
    }
    
    @IBAction func calcTip(_ sender: Any) {
        
        let tipChoices = [0.15, 0.18, 0.20]
        
        
        tipPercentage = tipChoices[tipControl.selectedSegmentIndex]
        if tipPercentage != nil{
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentage
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        }
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    
}

