//
//  ChatView.swift
//  FireChat
//
//  Created by Raymond Chen on 7/31/24.
//

import SwiftUI

struct ChatView: View {
    
    @Environment(AuthManager.self) var authManager
    @State var messageManager: MessageManager
    
    init(isMocked: Bool = false) {
        messageManager = MessageManager(isMocked: isMocked)
    }
    
    var body: some View {
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
    }
}

#Preview {
    ChatView(isMocked: true)
        .environment(AuthManager(isMocked: true))
}
