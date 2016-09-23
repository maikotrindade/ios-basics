//
//  NewViewController.swift
//  UiCollectionApp
//
//  Created by ifsp on 23/09/16.
//  Copyright © 2016 ifsp. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    
    var image = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imageView.image = self.image

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}
