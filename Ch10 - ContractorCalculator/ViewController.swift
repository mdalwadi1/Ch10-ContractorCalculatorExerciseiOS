//
//  ViewController.swift
//  Ch10 - ContractorCalculator
//
//  Created by user216619 on 4/18/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var laborTxt: UITextField!
    @IBOutlet weak var materialsTxt: UITextField!
    @IBOutlet weak var subtotalLabel: UILabel!
    @IBOutlet weak var taxLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var calculateBtn: UIButton!
    
    @IBAction func calculateBtn(_ sender: Any) {
        let taxPercent = 0.05
                //?? = optional, return 0 if nil/null --> if removed, it crashes
                //! = name property of Person class defined as implicitly unwrapped optional
                let labor1 = Double(laborTxt.text!) ?? 0
                let materials1 = Double(materialsTxt.text!) ?? 0
                let subtotal = labor1 + materials1
                let tax = subtotal * taxPercent
                let total = subtotal + tax
                
                subtotalLabel.text = String(format: "$%.2f", subtotal)
                taxLabel.text = String(format: "$%.2f", tax)
                totalLabel.text = String(format: "$%.2f", total)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

