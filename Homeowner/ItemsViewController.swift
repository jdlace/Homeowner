//
//  ItemsViewController.swift
//  Homeowner
//
//  Created by Jonathan Lace on 4/11/16.
//  Copyright © 2016 SHP. All rights reserved.
//

import UIKit

class ItemsViewController: UITableViewController {
    
//Properties
    
    var itemStore: ItemStore!
    

    
//Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let statusBarHeight = UIApplication.sharedApplication().statusBarFrame.height
        
        let insets = UIEdgeInsets(top: statusBarHeight, left: 0, bottom: 0, right: 0)
        tableView.contentInset = insets
        tableView.scrollIndicatorInsets = insets
    }
    
    @IBAction func addNewItem(sender: AnyObject) {
        
        //Make a new index path for the 0th section, last row
        //let lastRow = tableView.numberOfRowsInSection(0)
        //let indexPath = NSIndexPath(forRow: lastRow, inSection: 0)
        
        //Insert this new row into the table
       // tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
        
        let newItem = itemStore.createItem()
        
        if let index = itemStore.allItems.indexOf(newItem) {
            let indexPath = NSIndexPath(forRow: index, inSection: 0)
            
            tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
        }
        
    }
    
    @IBAction func toggleEditingMode(sender: AnyObject) {
        
        if editing {
            
            //Change text of button to inform user of state
            sender.setTitle("Edit", forState: .Normal)
            
            
            //Determines whether or not the view is currently editable
            setEditing(false, animated: true)
            
        } else {
            
            //Change text of button to inform user of state
            sender.setTitle("Done", forState: .Normal)
            
            //Determines whether or not the view is currently editable
            setEditing(true, animated: true)
        }
        
    }
    
    
    
    
    
    

    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return itemStore.allItems.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        

        
        let cell = tableView.dequeueReusableCellWithIdentifier("UITableViewCell", forIndexPath: indexPath)
        let item = itemStore.allItems[indexPath.row]
        
        cell.textLabel?.text = item.name
        cell.detailTextLabel?.text = "$\(item.valueInDollars)"
        
        return cell

    }
    
    
   
    override func tableView(tableView:UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        //If the table view is asking to commit a delete command...
        if editingStyle == .Delete {
            
            let item = itemStore.allItems[indexPath.row]
            
            //Remove item from the store
            itemStore.removeItem(item)
            
            //Also remove that row from teh table view with an animation
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
