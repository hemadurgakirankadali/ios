//
//  ResultViewController.swift
//  Kadali_Multipleviewcontroller
//
//  Created by Kadali,Hema Durga Kiran on 4/3/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    @IBOutlet weak var imageV: UIImageView!
    
    @IBOutlet weak var input: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func happybtn(_ sender: Any) {
     updateAndAnimate(_imageName: "happy")
        input.text = "When I play cricket, I feel Happy"
    }
    
    
    @IBAction func sad(_ sender: Any) {
        updateAndAnimate(_imageName: "sad")
        input.text = "When I lost game, I feel Sad"
    }
    
    
    @IBAction func angry(_ sender: Any) {
        updateAndAnimate(_imageName: "angry")
        input.text = "When I make a mistake in game,I feel Angry"
    }
   
    
    func updateAndAnimate(_imageName : String){
        UIView.animate(withDuration: 1, delay: 0.5, animations: {
            self.imageV.alpha = 1
            self.imageV.image = UIImage(named: _imageName)
        })
    }
}
