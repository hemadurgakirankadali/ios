//
//  ViewController.swift
//  kiranapp
//
//  Created by Kadali,Hema Durga Kiran on 2/6/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Namefield: UILabel!
    
    
    @IBOutlet weak var Lbelname: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Submit(_ sender: Any) {
        var input = Lbelname.text!
        Namefield.text = "My name is \(input)"
    }
    
}

