//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Keith chungag  on 10/15/17.
//  Copyright © 2017 keeko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //labels
    @IBOutlet weak var winner: UILabel!
    @IBOutlet weak var compScore: UILabel!
    @IBOutlet weak var youScore: UILabel!
    @IBOutlet weak var drawScore: UILabel!
    
    var compCounter = 0
    var youCounter = 0
    var drawCounter = 0
    
    @IBOutlet weak var compPlayed: UILabel!
    @IBOutlet weak var youPlayed: UILabel!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func buttonClicked(_ sender: UIButton)
    {
        
        if (sender.tag == 0)//rock
        {
            let winner1: String = whoWon(playerMove: "Rock")
            
            //winner label gets updated
            if (winner1 == "Draw")
            {
                winner.text = "\(winner1)."
            }
            else
            {
                winner.text = "\(winner1) Won."
            }
            
            //scores gets updated
            switch winner1
            {
            case "Draw":
                drawCounter = drawCounter + 1
                drawScore.text = String(drawCounter)
            case "Computer":
                compCounter = compCounter + 1
                compScore.text = String(compCounter)
            case "You":
                youCounter = youCounter + 1
                youScore.text = String(youCounter)
            default:
                print("error")
                
            }
            
        }
        
        if (sender.tag == 1)//paper
        {
            let winner1: String = whoWon(playerMove: "Paper")
            
            //winner label gets updated
            if (winner1 == "Draw")
            {
                winner.text = "\(winner1)."
            }
            else
            {
                winner.text = "\(winner1) Won."
            }
            
            //scores gets updated
            switch winner1
            {
            case "Draw":
                drawCounter = drawCounter + 1
                drawScore.text = String(drawCounter)
            case "Computer":
                compCounter = compCounter + 1
                compScore.text = String(compCounter)
            case "You":
                youCounter = youCounter + 1
                youScore.text = String(youCounter)
            default:
                print("error")
                
            }
        }
        
        if (sender.tag == 2)//scissors
        {
            let winner1: String = whoWon(playerMove: "Scissors")
            
            //winner label gets updated
            if (winner1 == "Draw")
            {
                winner.text = "\(winner1)."
            }
            else
            {
                winner.text = "\(winner1) Won."
            }
            
            //scores gets updated
            switch winner1
            {
            case "Draw":
                drawCounter = drawCounter + 1
                drawScore.text = String(drawCounter)
            case "Computer":
                compCounter = compCounter + 1
                compScore.text = String(compCounter)
            case "You":
                youCounter = youCounter + 1
                youScore.text = String(youCounter)
            default:
                print("error")
                
            }
        }
    }
    
    //function that decides who wins
    func whoWon(playerMove: String) -> String
    {
        var moves: [String] = ["Paper", "Rock", "Scissors"]
        
        let num = Int(arc4random_uniform(3))
        
        let computerMove: String = moves[num]
        
        //update compPlayed and youPlayed labels
        compPlayed.text = computerMove
        youPlayed.text = playerMove
        
        if (playerMove=="Rock") && (computerMove=="Rock")
        {
            return "Draw"
        }
        else if (playerMove=="Rock") && (computerMove=="Paper")
        {
            return "Computer"
        }
        else if (playerMove=="Rock") && (computerMove=="Scissors")
        {
            return "You"
        }
        else if (playerMove=="Paper") && (computerMove=="Paper")
        {
            return "Draw"
        }
        else if (playerMove=="Paper") && (computerMove=="Rock")
        {
            return "You"
        }
        else if (playerMove=="Paper") && (computerMove=="Scissors")
        {
            return "Computer"
        }
        else if (playerMove=="Scissors") && (computerMove=="Scissors")
        {
            return "Draw"
        }
        else if (playerMove=="Scissors") && (computerMove=="Rock")
        {
            return "Computer"
        }
        else if (playerMove=="Scissors") && (computerMove=="Paper")
        {
            return "You"
        }
        else
        {
            return "Shit"
        }
    }


}

