//
//  SettingsViewController.swift
//  Tippy
//
//  Created by Mal on 4/5/20.
//  Copyright © 2020 Mal. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var SettingsControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onSelect(_ sender: Any) {
        let selectChoices = [0.15, 0.18, 0.20]
        let defaults = UserDefaults.standard
        defaults.set(selectChoices[SettingsControl.selectedSegmentIndex], forKey: "defaultTip")
        defaults.synchronize()
        
       // let stringValue = defaults.string(forKey: "myString") ?? "my default string"
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
