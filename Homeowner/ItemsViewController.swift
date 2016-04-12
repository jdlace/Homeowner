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
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemStore.allItems.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
