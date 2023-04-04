//
//  ViewController.swift
//  calcnew
//
//  Created by Kadali,Hema Durga Kiran on 2/25/23.
//

import UIKit

class ViewController: UIViewController {

    
    var operand1:Double = -1.1
    var operand2:Double = -1.1
    var calcOperator: Character = " ";
    
    
    @IBOutlet weak var displaylabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button1(_ sender: Any) {
        
        displaylabel.text = "1";
        
        if operand1 == -1.1{
            operand1 = 1;
        }
        else{
            operand2 = 1;
        
    }
    }
    @IBAction func buttonplus(_ sender: Any) {
        displaylabel.text = "+";
        if calcOperator == " "{
            calcOperator = "+";
    }
    }
    
    @IBAction func button3(_ sender: Any) {
            displaylabel.text = "3";
            if operand2 == -1.1{
                operand2 = 3;
            }
            else{
                operand1 = 3;

    }
}

    @IBAction func buttonequals(_ sender: Any) {
        displaylabel.text = "=";
        if calcOperator == "+"{
            displaylabel.text = "\(operand1+operand2)"
    }
    }


    

}

