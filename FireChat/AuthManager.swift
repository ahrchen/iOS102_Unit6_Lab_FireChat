//
//  AuthManager.swift
//  FireChat
//
//  Created by Raymond Chen on 7/31/24.
//

import Foundation
import FirebaseAuth

@Observable
class AuthManager {
    
    var user: User?
    
    let isMocked: Bool
    
    var userEmail: String? {
        
        isMocked ? "kingsley@dog.com" : user?.email
        
    }
    
    init(isMocked: Bool = false) {
        self.isMocked = isMocked
        user = Auth.auth().currentUser
    }
    
    
    func signUp(email: String, password: String) {
        Task {
            do {
                let authResult = try await Auth.auth().createUser(withEmail: email, password: password)
                    self.user = authResult.user
            } catch {
                print(error)
            }
        }
    }
    
    func signIn(email: String, password: String) {
        Task {
            do {
                let authResult = try await Auth.auth().signIn(withEmail: email, password: password)
                self.user = authResult.user
            } catch {
                print(error)
            }
        }
    }
    
    func signOut() {
        do {
            try Auth.auth().signOut()
            user = nil
        } catch {
            print(error)
        }
    }
}
