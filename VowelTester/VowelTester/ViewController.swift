//
//  ViewController.swift
//  VowelTester
//
//  Created by Kadali,Hema Durga Kiran on 2/25/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var text: UITextField!
    
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button(_ sender: Any) {
        //enter the text
        var enteredtext = text.text!
        // check the text
        if (enteredtext.contains("a") ||
            enteredtext.contains("e")){
            //displayLbel on the label
            label.text = "the entered text contains vowel"
    }
    
        else{
            label.text = "the enterd text doesnot contain vowel"
        }
}

}

