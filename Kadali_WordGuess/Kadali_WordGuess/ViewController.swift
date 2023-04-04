//
//  ViewController.swift
//  Kadali_WordGuess
//
//  Created by Kadali,Hema Durga Kiran on 3/29/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var wordsGuessedLabel: UILabel!
    
        
  
    @IBOutlet weak var wordsRemainingLabel: UILabel!
    
    
    @IBOutlet weak var totalWordsLabel: UILabel!
    
    
    @IBOutlet weak var userGuessLabel: UILabel!
    
    
    @IBOutlet weak var hintLabel: UILabel!
    
    @IBOutlet weak var guessCountLabel: UILabel!
    
    
    @IBOutlet weak var statusLabel: UILabel!
    
    
    @IBOutlet weak var displayImage: UIImageView!
    
    
    
    @IBOutlet weak var guessLetterField: UITextField!
    
    
    @IBOutlet weak var guessLetterButton: UIButton!
   
    
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    
    var guessedWord=0
    var currentWord=0
    var wrongGuess=0
    var remainingWords=0
    var maxNumOfWrongGuesses = 10
    var wordsGuessedTillNow = ""
    var totalCount = 0
    var totalGuessed = 0
    var turn = 0
    
    var guessLetter = ""
    var arrOfWords = [["Swift","Programming Language"],
                       ["dog","Animal"],
                       ["iphone","phone"],
                        ["tower","place"],
                        ["virat","cricketer"]]
    var arrImages=["swift","dog","iphone","tower","virat"]
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
            // Do any additional setup after loading the view.
        
        guessLetterButton.isEnabled=false
        playAgainButton.isHidden=true
        remainingWords=arrImages.count
        displayImage.isHidden=true
        updateLabelsCount()
        guessCountLabel.text = "You have made \(wrongGuess)guesses"
        userGuessLabel.text=""
        updateWordGuess(currentWord)
        }

    
    
    @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
        guessLetterChange()
    }
   
    
    
    
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
        
        displayImage.isHidden = true
        statusLabel.text = ""
        guessCountLabel.text = "You have made \(wrongGuess) guesses"
        if(totalCount == totalGuessed){
           totalGuessed = 0
           currentWord += 1
           if currentWord == arrOfWords.count{
                statusLabel.text = "Congratulations!You are done with the game!Please start over again"
               displayImage.isHidden=false
               userGuessLabel.text=""
               guessCountLabel.text=""
               displayImage.image=UIImage(named:"alldone")
               guessLetterField.text=""
               hintLabel.text=""
               
                playAgainButton.isHidden = false
               currentWord = 0
               wrongGuess = 0
               guessedWord=0
               turn = turn + 1
            }else{
                updateWordGuess(currentWord)
            }
        }else if (currentWord == 0 && wrongGuess == 0 && turn != 0) {
            statusLabel.text = ""
            guessLetterButton.isEnabled=false
            playAgainButton.isHidden=true
            remainingWords=arrImages.count
            displayImage.isHidden=true
            updateLabelsCount()
            guessCountLabel.text = "You have made \(wrongGuess)guesses"
            userGuessLabel.text=""
            updateWordGuess(currentWord)
        }else{
            guessLetterField.isEnabled = true
            guessLetterButton.isEnabled = true
            playAgainButton.isHidden=true
            guessLetterChange()
            updateWordGuess(currentWord)
        }
       updateLabelsCount()
    
    }
    
    
    func guessLetterChange(){
            guessCountLabel.isHidden = false
        wordsGuessedTillNow =  ""
                    userGuessLabel.text = ""
        totalGuessed = 0
                    guessLetter += guessLetterField.text!.uppercased()
                    for letter in arrOfWords[currentWord][0].uppercased(){
                        if guessLetter.contains(letter) {
                            wordsGuessedTillNow += "\(letter)"
                            totalGuessed = totalGuessed + 1
                            
                        }else{
                            wordsGuessedTillNow += "_ "
                            
                        }
                    }
                    userGuessLabel.text! = wordsGuessedTillNow
                    guessLetterField.text = ""
                    disableGuessLetterBtn()
        wrongGuess += 1
                    
                    updateGuesses()
        }
    func updateGuesses() {
        if wordsGuessedTillNow == arrOfWords[currentWord][0].uppercased(){
                    displayImage.isHidden =  false
                    guessedWord += 1
                    if currentWord == arrOfWords.count{
                        statusLabel.text = "Congratulations!You are done with the game!"
                        displayImage.image=UIImage(named:"alldone")
                        guessedWord=0
                        updateLabelsCount()

                    }
            
            else{
                        guessCountLabel.text = "Wow! You have made\(wrongGuess) guesses to guess the word!"
                        displayImage.image = UIImage(named:arrImages[currentWord])
                       
                    }
                    wordsGuessedLabel.text! = "Total number of words guessed successfully: \(guessedWord)"
            print(guessedWord)
                    wordsRemainingLabel.text! = "Total number of words remaining in game: \(arrOfWords.count - guessedWord)"
            print(arrOfWords.count - guessedWord)
                    playAgainButton.isHidden = false
                    guessLetterField.isEnabled = false
                    
                    
                }
        else{
            statusLabel.text=""
                    guessCountLabel.text = "You have made \(wrongGuess) guesses"
                    
                }
                
                if wrongGuess == maxNumOfWrongGuesses  {
                    displayImage.isHidden =  false
                    if currentWord == arrOfWords.count {
                     
                        guessCountLabel.text = "Wow!You have made \(wrongGuess)guesses to guess the word"
                        displayImage.image = UIImage(named:arrImages[currentWord])
                        
                    }else{
                        
                        guessCountLabel.text = "You have used all the available guesses,Please play again"
                        displayImage.image=UIImage(named: "")
                       
                        var temp = guessLetterField.text!
                    
                        disableGuessLetterBtn()
                        playAgainButton.isHidden = false
                        guessLetterField.isEnabled = false
                        
                        wrongGuess = 0
                    }
                }
        
        
    }

    
    func disableGuessLetterBtn(){
           if guessLetterField.text!.count>0{
               guessLetterButton.isEnabled = true
                       let lastCharacter = guessLetterField.text!.last
                       guessLetterField.text = String(lastCharacter!).trimmingCharacters(in: .whitespaces)
                   }else{
                       guessLetterButton.isEnabled = false
                   }
       }
    
    func updateLabelsCount(){
        if(turn>0 && hintLabel.text!.contains("Programming Language")){
    guessedWord = 0
        }
                            wordsGuessedLabel.text! = "Total number of words guessed successfully: \(guessedWord)"
                    wordsRemainingLabel.text! = "Total number of words remaining in game: \(arrOfWords.count - guessedWord)"
                    totalWordsLabel.text! = "Total number of words in game :  \(arrOfWords.count)"
        }
    func updateWordGuess(_ currentNumber:Int){
          userGuessLabel.text = ""
          totalCount = 0
                  for _ in 0..<arrOfWords[currentNumber][0].count {
                      userGuessLabel.text! += "_ "
                      totalCount = totalCount + 1
                  }
                  hintLabel.text = "HINT: \(arrOfWords[currentNumber][1])"
                  guessLetter = ""
                  playAgainButton.isHidden = true
                  guessLetterField.isEnabled = true
                  wrongGuess = 0
        statusLabel.text=""
                  guessCountLabel.text = "You have made \(wrongGuess) guesses"
          
      }

    @IBAction func guessLetterWordEdited(_ sender: UITextField) {
        disableGuessLetterBtn()
    }
    
        
    }

