//
//  ViewController.swift
//  Prework
//
//  Created by Yuxin Chen on 8/12/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var percentLabel: UILabel!
    @IBOutlet weak var percentControl: UISlider!
    
    
    @IBOutlet weak var partySize: UILabel!
    @IBOutlet weak var partyControl: UIStepper!
    @IBOutlet weak var personTotalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    //Caclulate Tip and Total
    @IBAction func calculateTipFromSlider(_ sender: Any) {
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Get tip percentage from slider
        let sliderSelect = percentControl.value
        let tipPercentages = sliderSelect * 30
        
        //Update Tip Percentage label
        percentLabel.text = String(format: "%.0f %%", tipPercentages)

        
        //calcualte tip and total
        let tip = bill * Double(Int(tipPercentages)) / 100
        let total = bill + tip
        
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
 
        //Get Party Size
        partySize.text = String(Int( partyControl.value))
        
        //Splitting Total
        let personTotal =
        total / Double(Int( partyControl.value))
        
        personTotalLabel.text = String(format: "$%.2f", personTotal)
        
        
    }
    
    // Splitting Total
    @IBAction func partyStepper(_ sender: Any) {
        
        //Get Party Size
        partySize.text = String(Int( partyControl.value))
        
    }
}


    
