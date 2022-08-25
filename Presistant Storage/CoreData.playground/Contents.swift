import UIKit
import CoreData

//Choose CoreData from the checkbox when creating project
//Navigate to .xcdatamodel
//Add new Entity
//Change Entity name. Set module. Set CodeGen. Create swift file with entity name. Create class and inhirete from NSManagedObject.
//NSPersistentContainer is the Sqlite DB that has the data and its lazy(Not loaded until it gets called for sake of the memory)
//Context is the staging area for your DB

// Get the context using
//let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

// Get an opject of the Entity
// let pirateGroup = PirateGroup(context: context)
// Add data to object

// Save Context
//func saveContext() {
//    do {
//        try context.save()
//    } catch {
//        print("Error saving context \(error)")
//    }
//}

