//
//  FireChatApp.swift
//  FireChat
//
//  Created by Raymond Chen on 7/31/24.
//

import SwiftUI
import FirebaseCore

@main
struct FireChatApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}
