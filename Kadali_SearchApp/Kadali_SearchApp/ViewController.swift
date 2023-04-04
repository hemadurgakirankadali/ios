//
//  ViewController.swift
//  Kadali_SearchApp
//
//  Created by Kadali,Hema Durga Kiran on 3/22/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var searchTextField: UITextField!
    
    
    @IBOutlet weak var searchButtonAction: UIButton!
    
    
    @IBOutlet weak var resultImage: UIImageView!
    
    
    @IBOutlet weak var prevBtn: UIButton!
    
    
    @IBOutlet weak var resetBtn: UIButton!
    
    
    @IBOutlet weak var nextBtn: UIButton!
    
    
    
    @IBOutlet weak var topicInfoText: UITextView!
    
    var arr = [["sport","kia","skoda","eco","honda"],["virat","pandya","rohit","sachin","yuvraj"],["tower","egypt","hollywood","stonesplace","beach"]]
    
    var cars = ["sport","kia","skoda","eco","honda"]
    var cricketer = ["virat","pandya","rohit","sachin","yuvraj"]
    var places = ["tower","egypt","hollywood","stonesplace","beach"]
    var val = 0
    
    var sum_arr = [["A sports car is a car designed with an emphasis on dynamic performance","Kia Corporation, commonly known as Kia, is a South Korean multinational automobile manufacturer headquartered in Seoul, South Korea.","Škoda Auto a.s., often shortened to Škoda, is a Czech automobile manufacturer established in 1925 as the successor to Laurin & Klement and headquartered in Mladá Boleslav, Czech Republic","The Ford EcoSport (pronounced Eh-koh-sport)[1] is a subcompact crossover SUV (B-segment) manufactured by Ford","Honda Motor Co., Ltd. is a Japanese public multinational conglomerate manufacturer of automobiles, motorcycles, and power equipment, headquartered in Minato, Tokyo, Japan."],["Virat Kohli is an Indian international cricketer and the former captain of the India national team who plays as a right-handed batsman for Royal Challengers Bangalore in the IPL and for the Delhi in Indian domestic cricket","Hardik Himanshu Pandya (born 11 October 1993) is an Indian international cricketer who is the current vice-captain of the Indian cricket team in limited overs.","Rohit Gurunath Sharma, is an Indian international cricketer and the current captain of India men’s cricket team in all formats","Sachin Ramesh Tendulkar BR is an Indian former international cricketer who captained the Indian national team.","Yuvraj Singh (born 12 December 1981) is a former Indian international cricketer who played in all formats of the game"],["The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower.","Egypt, a country linking northeast Africa with the Middle East, dates to the time of the pharaohs. ","A larger-than-life symbol of the entertainment business, Hollywood beckons tourists with landmarks like TCL Chinese Theatre and star-studded Walk of Fame.","Stone Mountain is a city near Atlanta, Georgia. It’s a gateway to Stone Mountain Park, named for the vast monolith at its center","a strip of land covered with sand, pebbles, or small stones at the edge of a body of water, especially by the ocean between high- and low-water marks."]]
    var char = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        searchButtonAction.isEnabled = false
        prevBtn.isHidden = true
        nextBtn.isHidden = true
        resetBtn.isHidden = true
        resultImage.image = UIImage(named: "welcome")
    }

  

    @IBAction func InputTextField(_ sender: Any) {
    searchButtonAction.isEnabled = true
    }

    
    @IBAction func searchBtn(_ sender: Any) {
    let sum = searchTextField.text!
        if(cars.contains(sum)){
            resultImage.image = UIImage(named: arr[0][0])
            self.topicInfoText.text = sum_arr[0][0]
            prevBtn.isHidden = false
            nextBtn.isHidden = false
            resetBtn.isHidden = false
            nextBtn.isEnabled = true
            resetBtn.isEnabled = true
            prevBtn.isEnabled = false
            char = 1
            val = 0
        }
       else if(cricketer.contains(sum)){
            resultImage.image = UIImage(named: arr[1][0])
            topicInfoText.text = sum_arr[1][0]
           prevBtn.isHidden = false
           nextBtn.isHidden = false
           resetBtn.isHidden = false
           nextBtn.isEnabled = true
           resetBtn.isEnabled = true
           prevBtn.isEnabled = false
            char = 2
           val = 0
        }
        else if(places.contains(sum)){
            resultImage.image = UIImage(named: arr[2][0])
            topicInfoText.text = sum_arr[2][0]
            prevBtn.isHidden = false
            nextBtn.isHidden = false
            resetBtn.isHidden = false
            nextBtn.isEnabled = true
            resetBtn.isEnabled = true
            prevBtn.isEnabled = false
            char = 3
            val = 0
        }
        else{
            resultImage.image = UIImage(named: "notfound")
            topicInfoText.text = ""
            prevBtn.isHidden = true
            nextBtn.isHidden = true
            resetBtn.isHidden = true
            searchButtonAction.isHidden = false
        }
    }
    
    
    @IBAction func ShowPrevImagesBtn(_ sender: Any) {
        if(char == 1){
            val -= 1
            resultImage.image = UIImage(named: arr[0][val])
            topicInfoText.text = sum_arr[0][val]
            nextBtn.isEnabled = true
            resetBtn.isEnabled = true
            if(val == 0){
                prevBtn.isEnabled = false
            }
        }
        if(char == 2){
            val -= 1
            resultImage.image = UIImage(named: arr[1][val])
            topicInfoText.text = sum_arr[1][val]
            nextBtn.isEnabled = true
            resetBtn.isEnabled = true
            if(val == 0){
                prevBtn.isEnabled = false
            }
        }
        if(char == 3){
            val -= 1
            resultImage.image = UIImage(named: arr[2][val])
            topicInfoText.text = sum_arr[2][val]
            nextBtn.isEnabled = true
            resetBtn.isEnabled = true
            if(val == 0){
                prevBtn.isEnabled = false
            }
        }
    }
    
    @IBAction func ResetBtn(_ sender: Any) {
        searchTextField.text = ""
        resultImage.image = UIImage(named: "welcome")
        prevBtn.isHidden = true
        nextBtn.isHidden = true
        resetBtn.isHidden = true
        topicInfoText.text = ""
        searchButtonAction.isEnabled = false
    }
    
    
    
    
    @IBAction func ShowNextImagesBtn(_ sender: Any) {
        if(char == 1){
            val += 1
            resultImage.image = UIImage(named: arr[0][val])
            topicInfoText.text = sum_arr[0][val]
            prevBtn.isEnabled = true
            resetBtn.isEnabled = true
            if(val == 4){
                nextBtn.isEnabled = false
            }
        }
        if(char == 2){
            val += 1
            resultImage.image = UIImage(named: arr[1][val])
            topicInfoText.text = sum_arr[1][val]
            prevBtn.isEnabled = true
            resetBtn.isEnabled = true
            if(val == 4){
                nextBtn.isEnabled = false
            }
        }
        if(char == 3){
            val += 1
            resultImage.image = UIImage(named: arr[2][val])
            topicInfoText.text = sum_arr[2][val]
            prevBtn.isEnabled = true
            resetBtn.isEnabled = true
            if(val == 4){
                nextBtn.isEnabled = false
            }
        }
    }
    
}

