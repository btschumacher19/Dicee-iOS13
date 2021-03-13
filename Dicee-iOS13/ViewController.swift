//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Control click and drag ui element to create these variables
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Who           what(from right pane) value
        diceImageViewOne.image = #imageLiteral(resourceName: "DiceSix");
        diceImageViewOne.alpha = 0.75;
        diceImageViewTwo.image = #imageLiteral(resourceName: "DiceFour");
    }

    @IBAction func rollButtonPressed(_ sender: Any) {
        //string interpolation by \( x )
        let x = 2*3;
        print("Button \(x) Pressed")
        
        let images = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        diceImageViewOne.image = images[Int.random(in: 0...5)]
        //or alternatively:
//        Int.random(in: 0..< 6)
//        also you can do array.shuffle()  /   Float.random(in: 1 ... 3)  /  Bool.random()
        diceImageViewTwo.image = images.randomElement()
    }

}

