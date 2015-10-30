//
//  ViewController.swift
//  FibonacciApp
//
//  Created by Kira Godshall on 10/26/15.
//  Copyright © 2015 Kira Godshall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        updateFibonacciSequence()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var includesZeroLabel: UILabel!
    @IBOutlet weak var includesZeroSwitch: UISwitch!
    @IBOutlet weak var numberOfItemsSlider: UISlider!
    @IBOutlet weak var numberOfItemsLabel: UILabel!
    
    
    
    var fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: 2, includesZero: true)
    
    @IBAction func updateFibonacciSequence() {
        
        if includesZeroSwitch.on {
            numberOfItemsSlider.maximumValue = 94
        }else{
            numberOfItemsSlider.maximumValue = 93
        }
        
        includesZeroLabel.text = includesZeroSwitch.on ? "Yes": "No"
        
        numberOfItemsLabel.text = String(UInt64(numberOfItemsSlider.value))
        
        
        fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: UInt64(numberOfItemsSlider.value), includesZero: includesZeroSwitch.on)
        
        textView.text = fibonacciSequence.values.description

    }
}