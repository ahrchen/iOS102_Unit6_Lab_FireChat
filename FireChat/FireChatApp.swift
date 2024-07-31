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
    
    @State private var authManager: AuthManager
    
    init() {
        FirebaseApp.configure()
        authManager = AuthManager()
    }
    
    var body: some Scene {
        WindowGroup {
            if authManager.user != nil {
                NavigationStack {
                    Text("Welcome to FireChat!")
                        .navigationTitle("Chat")
                        .navigationBarTitleDisplayMode(.inline)
                        .toolbar {
                            ToolbarItem {
                                Button("Sign Out") {
                                    authManager.signOut()
                                }
                            }
                        }
                }
            } else {
                LoginView()
                    .environment(authManager)
            }
        }
    }
}
