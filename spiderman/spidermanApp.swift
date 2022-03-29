//
//  spidermanApp.swift
//  spiderman
//
//  Created by Avinash.Kandaswamy on 3/29/22.
//

import SwiftUI

@main
struct spidermanApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
