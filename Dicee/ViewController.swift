//
//  ViewController.swift
//  Dicee
//
//  Created by Anthony Ruiz on 4/26/18.
//  Copyright © 2018 Jakaboy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
   var randomDice1 : Int = 0
   var randomDice2 : Int = 0
   

   @IBAction func rollButton(_ sender: UIButton) {
      randomDice1 = Int(arc4random_uniform(6))
      randomDice2 = Int(arc4random_uniform(6))
      diceImageView1.image = UIImage(named: "dice" + String(randomDice1+1))
      diceImageView2.image = UIImage(named: "dice" + String(randomDice2+1))
   }
   
   
   @IBOutlet weak var diceImageView1: UIImageView!
   @IBOutlet weak var diceImageView2: UIImageView!
   
   
   override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view, typically from a nib.
   }

   override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
   }


}

