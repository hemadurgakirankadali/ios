//
//  ViewController.swift
//  Disountapp
//
//  Created by Kadali,Hema Durga Kiran on 2/20/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var text: UITextField!
    
    
    @IBOutlet weak var discount: UITextField!
    
    
    @IBOutlet weak var display: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    
    
    @IBAction func submit(_ sender: UIButton) {
        
        var amount = Double(text.text!)
        var discount = Double(discount.text!)
        var priceAfterDiscount = amount!-(amount!*discount!/100)
        display.text = "price After discount :$\(priceAfterDiscount)"
    }
}

