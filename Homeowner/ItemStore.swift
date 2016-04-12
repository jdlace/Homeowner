import UIKit

class ItemStore {
    
//Properties
    
    //create an array of Items
    var allItems = [Item]()
    
    
//Methods
    
    init() {
        
        for _ in 0..<5 {
            createItem()
        }
    }

    
    //create a new Item and add to Items array
    func createItem() -> Item {
        let newItem = Item(random: true)
        
        allItems.append(newItem)
        
        return newItem
    }
    
    
    
    
    
    
    
    
}
