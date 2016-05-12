//
//  ItemCell.swift
//  Homeowner
//
//  Created by Jonathan Lace on 4/25/16.
//  Copyright © 2016 SHP. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var serialNumber: UILabel!
    @IBOutlet var valueLabel: UILabel!
    
    func updateLabels() {
        
        let bodyFont = UIFont.preferredFontForTextStyle(UIFontTextStyleBody)
        
        nameLabel.font = bodyFont
        valueLabel.font = bodyFont
        
        let caption1Font = UIFont.preferredFontForTextStyle(UIFontTextStyleCaption1)
        serialNumber.font = caption1Font
    }
    
    
    
    
    
    
    
    
    
}
