//
//  artBlock1App.swift
//  artBlock1
//
//  Created by Helen Hall on 11/28/21.
//

import SwiftUI

@main
struct artBlock1App: App {
    let persistenceController = PersistenceController.shared
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    //make list view model passable
    var body: some Scene {
        WindowGroup {
//            FolderView(folderName: "Test")
//                .environmentObject(ListViewModel())
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(listViewModel)
        }
    }
    func saveContext () {
        let context = persistenceController.container.viewContext
        if context.hasChanges {
            do{
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror)")
            }
        }
    }
}

//looking at https://www.youtube.com/watch?v=nalfX8yP0wc for core data instruction
