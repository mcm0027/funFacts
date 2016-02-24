 //
//  ViewController.swift
//  FunFacts
//
//  Created by user114896 on 2/22/16.
//  Copyright © 2016 user114896. All rights reserved.
//

import UIKit
 


class ViewController: UIViewController {

    
    
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    let factModel = FactModel()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        funFactLabel.text = factModel.facts[0]
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    @IBAction func showFunFact() {
        let randomColor = ColorModel().getRandomColor()
        funFactButton.tintColor = randomColor
        view.backgroundColor = randomColor
        funFactLabel.text = factModel.getRandomFact()
    }
}

