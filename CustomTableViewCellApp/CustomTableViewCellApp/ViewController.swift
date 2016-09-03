//
//  ViewController.swift
//  CustomTableViewCellApp
//
//  Created by ifsp on 02/09/16.
//  Copyright © 2016 com.ifsp. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var names = ["dog1","dog2","dog3","dog4","dog5"]
    var descriptions = ["Crazy Dog 1", "Crazy Dog 2" , "Crazy Dog 3", "Crazy Dog 4", "Crazy Dog 5"]
    var images = [UIImage(named:"dog1"), UIImage(named:"dog2"), UIImage(named:"dog3"), UIImage(named:"dog4"), UIImage(named:"dog5")]
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell =
        self.tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! CustomCell
        cell.photo.image = images[indexPath.row]
        cell.name.text = names[indexPath.row]
        cell.breed.text = descriptions[indexPath.row]
        return cell
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

