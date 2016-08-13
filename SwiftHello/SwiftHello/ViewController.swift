//
//  ViewController.swift
//  SwiftHello
//
//  Created by ifsp on 12/08/16.
//  Copyright © 2016 IFSP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet var mLabel: UILabel!
    
    @IBOutlet var mButton: UIButton!
    
    @IBOutlet var mTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mLabel.text = "Hello World!"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pressButton() {
        mLabel.text = mTextField.text
    }

}

