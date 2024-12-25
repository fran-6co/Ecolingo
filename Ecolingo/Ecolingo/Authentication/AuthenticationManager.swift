//
//  AuthenticationManager.swift
//  Ecolingo
//
//  Created by Keerthi Siva on 25/12/24.
//

import Foundation
import FirebaseAuth

struct AuthDataModel{
    let uid: String
    let email: String?
    let photoUrl: String?
    
    init(user: User){
        self.uid = user.uid
        self.email = user.email
        self.photoUrl = user.photoURL?.absoluteString
    }
}

final class AuthenticationManager{
    
    static let shared = AuthenticationManager()
    private init(){ }
    
    //function to get a user
    func getAuthenticatedUser() throws -> AuthDataModel{
        guard let user = Auth.auth().currentUser else{
            throw URLError(.badServerResponse)
        }
        
        return AuthDataModel(user: user  )
    }
    
    //function to create a user
    @discardableResult
    func createUser(email: String, password: String) async throws -> AuthDataModel{
        let authDataResult = try await Auth.auth().createUser(withEmail: email, password: password)
        return AuthDataModel(user: authDataResult.user)
    }
    
    //function to signout
    func signOut() throws{
        try Auth.auth().signOut()
    }
    
}
