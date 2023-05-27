//
//  appleWatchStoreApp.swift
//  Shared
//
//  Created by amr on 19/07/2022.
//

import SwiftUI

@main
struct appleWatchStoreApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
