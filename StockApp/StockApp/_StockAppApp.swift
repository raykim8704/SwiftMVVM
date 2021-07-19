//
//  _StockAppApp.swift
//  StockApp
//
//  Created by KwanghoonKim on 2021/07/19.
//

import SwiftUI

@main
struct _StockAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
