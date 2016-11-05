//
//  ViewController.swift
//  Cards
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var suitLabel: UILabel!
    
    @IBOutlet weak var cardButton: UIButton!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if let label = sender.currentTitle {
            var labelArray = Array(label.characters)
            let suite = String(labelArray[0])
            var labelArrayWithoutSuite = labelArray.dropFirst()
            let value = String(labelArrayWithoutSuite)
            print (labelArray)
            print(suite)
            print(value)
            updateSuite(suite: suite)
            updateNumber(label: value)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    // TODO: IB actions and code to update UI
    func updateSuite(suite: String) {
        suitLabel.text = suite
    }
    
    func updateNumber(label: String) {
        numberLabel.text = label
    }
    
  

}
