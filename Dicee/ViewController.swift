//
//  ViewController.swift
//  Dicee
//
//  Created by 滕施男 on 5/11/17.
//  Copyright © 2017 Shinan Teng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomNum1 : Int = 0
    var randomNum2 : Int = 0
    
    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages() -> Void {
        randomNum1 = Int(arc4random_uniform(6)) + 1
        randomNum2 = Int(arc4random_uniform(6)) + 1
        
        diceImage1.image = UIImage(named: "dice\(randomNum1)")
        diceImage2.image = UIImage(named: "dice\(randomNum2)")
    }
    
    // When after shaking the iPhone, update the dice images...
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
}
