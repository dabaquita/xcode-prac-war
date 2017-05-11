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
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(sender:UIButton) {
        
        // Random left number from 2 - 10 below
        let leftNumber = arc4random_uniform(9) + 2
        
        // Set left image
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        
        // Random right number from 2 - 10
        let rightNumber = arc4random_uniform(9) + 2
        
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
    }
    
    
    
}

