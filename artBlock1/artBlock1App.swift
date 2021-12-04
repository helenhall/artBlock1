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

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
