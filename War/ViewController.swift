//
//  ViewController.swift
//  War
//
//  Created by Denielle Kirk Abaquita on 4/7/17.
//  Copyright © 2017 Denielle Kirk Abaquita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var rightScoreLabel: UILabel!
    var rightScore = 0
    
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    var leftScore = 0


    let cardNames = ["card2", "card3", "card4", "card5", "card6",
                     "card7", "card8", "card9", "card10", "jack", "queen", "king", "ace"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(sender:UIButton) {
        
        // Random left number from 0 to 12
        let leftNumber:Int = Int(arc4random_uniform(13))
        
        // Set left image
        leftImageView.image = UIImage(named: cardNames[leftNumber])
        
        // Random right number from 0 to 12
        let rightNumber:Int = Int(arc4random_uniform(13))
        
        rightImageView.image = UIImage(named: cardNames[rightNumber])
        
        
        // Compare the card numbers
        if leftNumber > rightNumber {
            // Left wins
            
            // Increment score
            leftScore += 1
            
            // Update label
            leftScoreLabel.text = String(leftScore)
        }
        else if leftNumber == rightNumber {
            // Tie
            
        }
        else {
            // Right wins
            
            // Increment score
            rightScore += 1
            
            // Update label
            rightScoreLabel.text = String(rightScore)
        }
    }
    
    
    
}

