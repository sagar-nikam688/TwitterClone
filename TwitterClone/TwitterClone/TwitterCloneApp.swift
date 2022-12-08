//
//  TwitterCloneApp.swift
//  TwitterClone
//
//  Created by sutta on 07/12/22.
//

import SwiftUI

@main
struct TwitterCloneApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            RootTabView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
