//
//  MessageManager.swift
//  FireChat
//
//  Created by Raymond Chen on 7/31/24.
//

import Foundation
import FirebaseFirestore

@Observable
class MessageManager {
    
    var messages: [Message] = []
    
    init(isMocked: Bool = false) {
        if isMocked {
            messages = Message.mockedMessages
        } else {
            
        }
    }
}
