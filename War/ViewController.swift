//
//  ViewController.swift
//  War
//
//  Created by ilabuser on 7/15/18.
//  Copyright © 2018 Anson Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftimageview: UIImageView!
    
    @IBOutlet weak var rightimageview: UIImageView!
    
    @IBOutlet weak var leftscorelabel: UILabel!
    
    @IBOutlet weak var rightscorelabel: UILabel!
    
    var leftscore = 0
    var rightscore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(_ sender: Any) {
        // randomize two numbers
        let leftRandomNumber = arc4random_uniform(13) + 2

        let rightRandomNumber = arc4random_uniform(13) + 2

        // change the image views
        leftimageview.image = UIImage(named: "card\(leftRandomNumber)")
        
        rightimageview.image = UIImage(named: "card\(rightRandomNumber)")
        
        // compare the numbers
        if leftRandomNumber > rightRandomNumber {
            // update the score
            leftscore = leftscore + 1
            
            // update the label
            leftscorelabel.text = String (leftscore)
        }
      
        else if rightRandomNumber > leftRandomNumber {
            // update the score
            rightscore = rightscore + 1
            
            // update the label
            rightscorelabel.text = String (rightscore)
        }
        
        else if rightRandomNumber == leftRandomNumber {
            // here nothing heppens
        }
    }
    
    
}

