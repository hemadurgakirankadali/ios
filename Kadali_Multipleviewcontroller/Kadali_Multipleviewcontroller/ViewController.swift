//
//  ViewController.swift
//  Kadali_Multipleviewcontroller
//
//  Created by Kadali,Hema Durga Kiran on 4/3/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageOutlet: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func showBtn(_ sender: Any) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "resultSegue"{
            var destination = segue.destination as! ResultViewController
            
        }
    }
    

}

