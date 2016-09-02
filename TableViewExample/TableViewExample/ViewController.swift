//
//  ViewController.swift
//  TableViewExample
//
//  Created by ifsp on 02/09/16.
//  Copyright © 2016 com.ifsp. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!

    var array = [Todo]()
    
    //Mark: tableview data source
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //number of rows displayed
        return array.count
    }
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            //delete array's cell
            array.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Left)
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell")!
        let todo = array[indexPath.row]
        cell.textLabel?.text=todo.name
        return cell
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        array.append(Todo(name:"Code"))
        array.append(Todo(name:"Check nullpointers"))
        array.append(Todo(name:"Inflate views"))
        array.append(Todo(name:"Apply MVP pattern"))
        array.append(Todo(name:"Don't eat apples"))
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

