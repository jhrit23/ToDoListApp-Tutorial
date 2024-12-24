//
//  ToDoListAppApp.swift
//  ToDoListApp
//
//  Created by Jonathan Hesler on 12/23/24.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    
    init () {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
