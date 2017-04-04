//
//  ViewController.swift
//  numberGuessApp
//
//  Created by Dmitry Kolesnichenko on 4/4/17.
//  Copyright © 2017 Dmitry K. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberGenerator : Int = 0;

    @IBOutlet weak var userNumber: UITextField!
    @IBOutlet weak var Result: UILabel!
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        numberGenerator = Int(arc4random_uniform(11))
        print(numberGenerator)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func submitButton(_ sender: Any) {
        if Int(userNumber.text!)! > numberGenerator{
            Result.text = "Number > x"
        }
        else if Int(userNumber.text!)! < numberGenerator{
            Result.text = "Number < x"
        }
        else{
            Result.text = "You won"
        }

        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
    }


}

