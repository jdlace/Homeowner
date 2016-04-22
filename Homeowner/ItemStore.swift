import UIKit

class ItemStore {
    
//Properties
    
    //create an array of Items
    var allItems = [Item]()
    
    
//Methods
    
    init() {
            
    }

    
    //create a new Item and add to Items array
    func createItem() -> Item {
        let newItem = Item(random: true)
        
        allItems.append(newItem)
        
        return newItem
    }
    
    //remove an Item
    func removeItem(item: Item) {
        if let index = allItems.indexOf(item) {
            allItems.removeAtIndex(index)
        }
    }
    
    
    
    
    
    
    
    
}
