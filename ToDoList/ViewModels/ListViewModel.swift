//
//  ListViewModel.swift
//  ToDoList
//
//  Created by Andres Pulgarin on 7/4/23.
//

import Foundation
 
class ListViewModel: ObservableObject {
    @Published var items: [ItemModel] = [] {
        //called when items array is changed
        didSet{
            saveItems()
        }
    }
    let itemsKey: String = "items_list"
    
    init() {
        getItems()
    }
    
    func getItems() {
        /*
        let newItems = [
            ItemModel(title: "first title", isCompleted: false),
            ItemModel(title: "second title", isCompleted: false),
            ItemModel(title: "Third Title", isCompleted: true),
        ]
        items.append(contentsOf: newItems)
         */
        //try to get data from itemskey else its false and kaboom
        guard
            let data = UserDefaults.standard.data(forKey: itemsKey),
            let savedItems = try? JSONDecoder().decode([ItemModel].self, from: data)
        else {return}
        
        self.items = savedItems
        
    }
    
    func deleteItem(IndexSet: IndexSet) {
        items.remove(atOffsets: IndexSet)
    }
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    func updateItem(item: ItemModel) {
        if let index = items.firstIndex(where: {$0.id == item.id}) {
            items[index] = item.updateCompletion()
        }
    }
    func saveItems() {
        //try? because it can fail to encode items array to json
        if let encodedData = try? JSONEncoder().encode(items)  {
            UserDefaults.standard.set(encodedData, forKey: itemsKey)
        }
    }
}
