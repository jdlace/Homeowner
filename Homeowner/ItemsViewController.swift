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
        
    }
    
    @IBAction func toggleEditingMode(sender: AnyObject) {
        
        if editing {
            
            //Change text of button to inform user of state
            sender.setTitle("Edit", forState: .Normal)
            
            
            //Turn off editing mode
            setEditing(false, animated: true)
        } else {
            
            //Change text of button to inform user of state
            sender.setTitle("Done", forState: .Normal)
            
            //Enter editing mode
            setEditing(true, animated: true)
        }
        
    }
    
    
    
    
    
    

    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return itemStore.allItems.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //let cell2 = UITableViewCell(style: .Value2, reuseIdentifier: "what")
        let cell = tableView.dequeueReusableCellWithIdentifier("UITableViewCell", forIndexPath: indexPath)
        let item = itemStore.allItems[indexPath.row]
        
        cell.textLabel?.text = item.name
        cell.detailTextLabel?.text = "$\(item.valueInDollars)"
        
        return cell
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
