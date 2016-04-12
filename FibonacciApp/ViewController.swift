//
//  ViewController.swift
//  FibonacciApp
//
//  Created by Karlee Adams on 3/5/16.
//  Copyright © 2016 Karlee Adams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: 2, includesZero: true)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.updateFibonacciSequence()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var textView: UITextView!

    @IBOutlet weak var includesZeroSwitch: UISwitch!
    
    @IBOutlet weak var includesZeroLabel: UILabel!
    
    @IBOutlet weak var numberOfItemsLabel: UILabel!
    
    @IBOutlet weak var numberOfItemsSlider: UISlider!
    
    @IBAction func updateFibonacciSequence() {
        fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: UInt(numberOfItemsSlider.value), includesZero: includesZeroSwitch.on)
        if includesZeroSwitch.on {
            numberOfItemsSlider.maximumValue = 94
        } else {
            numberOfItemsSlider.maximumValue = 93
        }
        textView.text = fibonacciSequence.values.description
        includesZeroLabel.text = includesZeroSwitch.on ? "Yes" : "No"
        numberOfItemsLabel.text = String(Int(numberOfItemsSlider.value))
    }
    
}

