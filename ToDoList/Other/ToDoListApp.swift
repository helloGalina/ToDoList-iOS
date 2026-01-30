//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Galina on 26.01.2026.
//

import SwiftUI
import FirebaseCore

@main
struct ToDoListApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
